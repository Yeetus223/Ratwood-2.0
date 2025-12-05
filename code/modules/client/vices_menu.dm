/datum/preferences/proc/open_vices_menu(mob/user)
	if(!user || !user.client)
		return
	
	user << browse(generate_vices_html(user), "window=vices_menu;size=1000x700")

/datum/preferences/proc/generate_vices_html(mob/user)
	var/html = {"
		<!DOCTYPE html>
		<html lang="en">
		<meta charset='UTF-8'>
		<meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'/>
		<style>
			body {
				font-family: Verdana, Arial, sans-serif;
				background: #1C0000;
				color: #e3c06f;
				margin: 0;
				padding: 20px;
			}
			.header {
				text-align: center;
				padding: 15px;
				background: rgba(0, 0, 0, 0.4);
				border: 1px solid #e3c06f;
				margin-bottom: 20px;
			}
			.header h1 {
				margin: 0;
				color: #e3c06f;
				font-size: 1.5em;
			}
			.header p {
				margin: 5px 0;
				font-size: 0.9em;
				color: #999;
			}
			.vices-grid {
				display: grid;
				grid-template-columns: repeat(1, 1fr);
				gap: 15px;
				padding: 20px;
			}
			.vice-slot {
				background: rgba(0, 0, 0, 0.4);
				border: 1px solid #444;
				padding: 15px;
			}
			.vice-slot.required {
				border-color: #e3c06f;
			}
			.vice-slot:hover {
				border-color: #e3c06f;
			}
			.slot-header {
				display: flex;
				justify-content: space-between;
				align-items: center;
				margin-bottom: 10px;
				padding-bottom: 10px;
				border-bottom: 1px solid #444;
			}
			.slot-number {
				font-weight: bold;
				color: #e3c06f;
			}
			.slot-required {
				background: #e3c06f;
				color: #1C0000;
				padding: 2px 8px;
				font-size: 0.8em;
				font-weight: bold;
			}
			.slot-cost {
				background: #4CAF50;
				color: #1C0000;
				padding: 2px 8px;
				font-size: 0.9em;
				font-weight: bold;
			}
			.vice-display {
				display: flex;
				align-items: flex-start;
				margin-bottom: 10px;
			}
			.vice-info {
				flex: 1;
			}
			.vice-name {
				font-weight: bold;
				color: #e3c06f;
				margin-bottom: 5px;
			}
			.vice-desc {
				font-size: 0.85em;
				color: #999;
				line-height: 1.4;
			}
			.btn {
				padding: 6px 12px;
				border: 1px solid #444;
				background: rgba(0, 0, 0, 0.4);
				color: #e3c06f;
				cursor: pointer;
				font-family: Verdana, Arial, sans-serif;
				font-size: 0.85em;
				text-decoration: none;
				display: inline-block;
				margin: 2px;
			}
			.btn:hover {
				background: rgba(227, 192, 111, 0.2);
				border-color: #e3c06f;
			}
			.btn-select {
				background: rgba(76, 175, 80, 0.3);
				border-color: #4CAF50;
				color: #4CAF50;
			}
			.btn-select:hover {
				background: rgba(76, 175, 80, 0.5);
			}
			.btn-clear {
				background: rgba(244, 67, 54, 0.3);
				border-color: #f44336;
				color: #f44336;
			}
			.btn-clear:hover {
				background: rgba(244, 67, 54, 0.5);
			}
			.empty-slot {
				text-align: center;
				padding: 20px;
				color: #666;
				font-style: italic;
			}
			.actions {
				margin-top: 10px;
				display: flex;
				flex-wrap: wrap;
				gap: 5px;
			}
		</style>
		<body>
			<div class="header">
				<h1>⚔ Vice Selection ⚔</h1>
				<p>Select up to 5 vices (at least 1 required)</p>
				<p>Vices grant Triumphs but impose character limitations</p>
			</div>
			
			<div class="vices-grid">
	"}
	
	// Generate 5 vice slots
	for(var/i = 1 to 5)
		var/slot_var = "vice[i]"
		var/datum/charflaw/current_vice = vars[slot_var]
		var/is_required = (i == 1)
		
		html += "<div class='vice-slot[is_required ? " required" : ""]'>"
		html += "<div class='slot-header'>"
		html += "<span class='slot-number'>Vice Slot [i]</span>"
		
		if(is_required)
			html += "<span class='slot-required'>REQUIRED</span>"
		
		if(current_vice)
			// Extract triumph value from name
			var/triumph_match = findtext(current_vice.name, "(+")
			if(triumph_match)
				var/triumph_end = findtext(current_vice.name, " TRI)", triumph_match)
				if(triumph_end)
					var/triumph_str = copytext(current_vice.name, triumph_match + 2, triumph_end)
					html += "<span class='slot-cost'>+[triumph_str] Triumphs</span>"
		
		html += "</div>"
		
		if(current_vice)
			// Vice is selected
			html += "<div class='vice-display'>"
			html += "<div class='vice-info'>"
			html += "<div class='vice-name'>[current_vice.name]</div>"
			html += "<div class='vice-desc'>[current_vice.desc]</div>"
			html += "</div>"
			html += "</div>"
			
			html += "<div class='actions'>"
			html += "<a class='btn btn-select' href='byond://?src=\ref[src];vice_action=change;slot=[i]'>Change Vice</a>"
			if(!is_required)
				html += "<a class='btn btn-clear' href='byond://?src=\ref[src];vice_action=clear;slot=[i]'>Clear</a>"
			html += "</div>"
		else
			// Empty slot
			html += "<div class='empty-slot'>"
			if(is_required)
				html += "No Vice Selected - <b>REQUIRED</b><br><br>"
			else
				html += "Empty Slot<br><br>"
			html += "<a class='btn btn-select' href='byond://?src=\ref[src];vice_action=select;slot=[i]'>Select Vice</a>"
			html += "</div>"
		
		html += "</div>"
	
	html += {"
			</div>
		</body>
		</html>
	"}
	
	return html

/datum/preferences/Topic(href, href_list)
	. = ..()
	
	if(href_list["vice_action"])
		var/action = href_list["vice_action"]
		var/slot = text2num(href_list["slot"])
		
		if(!slot || slot < 1 || slot > 5)
			return
		
		var/slot_var = "vice[slot]"
		
		switch(action)
			if("select", "change")
				// Show vice selection menu
				var/list/vices_available = list()
				
				// Get all currently selected vices to prevent duplicates
				var/list/selected_vices = list()
				for(var/i = 1 to 5)
					var/datum/charflaw/existing_vice = vars["vice[i]"]
					if(existing_vice)
						selected_vices += existing_vice.type
				
				for(var/vice_name in GLOB.character_flaws)
					var/datum/charflaw/vice_type = GLOB.character_flaws[vice_name]
					
					// Skip if already selected in another slot
					var/datum/charflaw/current_vice = vars[slot_var]
					if(vice_type in selected_vices && current_vice?.type != vice_type)
						continue
					
					vices_available[vice_name] = vice_type
				
					vices_available = sort_list(vices_available)
					var/choice = tgui_input_list(usr, "Select a vice for slot [slot]:", "Vice Selection", vices_available)
				
					if(choice)
						var/datum/charflaw/selected = vices_available[choice]
						vars[slot_var] = new selected()
						to_chat(usr, span_notice("Selected [choice] for vice slot [slot]."))
						var/datum/charflaw/new_vice = vars[slot_var]
						if(new_vice.desc)
							to_chat(usr, "<span class='info'>[new_vice.desc]</span>")
							save_preferences()
				open_vices_menu(usr)
			
			if("clear")
				if(slot == 1)
					to_chat(usr, span_warning("Vice slot 1 is required and cannot be cleared!"))
					return
				
				vars[slot_var] = null
				save_preferences()
				open_vices_menu(usr)
