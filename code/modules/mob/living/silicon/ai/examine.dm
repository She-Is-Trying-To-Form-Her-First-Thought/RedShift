/// Adds a newline to the examine list if the above entry is not empty and it is not the first element in the list
#define ADD_NEWLINE_IF_NECESSARY(list) if(length(list) > 0 && list[length(list)]) { list += "" }

/mob/living/silicon/ai/examine(mob/user)
	. = list()
	if(stat == DEAD)
		. += span_deadsay("It appears to be powered-down.")
	. += span_notice("Its floor <b>bolts</b> are [is_anchored ? "tightened" : "loose"].")
	if(is_anchored)
		if(!opened)
			if(!emagged)
				. += span_notice("Its access panel is [stat == DEAD ? "damaged" : "closed and locked"], but could be <b>pried</b> open.")
			else
				. += span_warning("Its access panel lock is sparking, the cover can be <b>pried</b> open.")
		else
			. += span_notice("Its neural network connection could be <b>cut</b>, its access panel cover can be <b>pried</b> back into place.")
	if(stat != DEAD)
		if (getBruteLoss())
			if (getBruteLoss() < 30)
				. += span_warning("It looks slightly dented.")
			else
				. += span_warning("<B>It looks severely dented!</B>")
		if (getFireLoss())
			if (getFireLoss() < 30)
				. += span_warning("It looks slightly charred.")
			else
				. += span_warning("<B>Its casing is melted and heat-warped!</B>")
		if(deployed_shell)
			. += "The wireless networking light is blinking."
		else if (!shunted && !client)
			. += "[src]Core.exe has stopped responding! NTOS is searching for a solution to the problem..."
		// DOPPLER EDIT BEGIN: flavor text
		var/short_desc = READ_PREFS(src, text/silicon_short_desc)
		if (short_desc)
			. += "[short_desc] [get_extended_description_href("\[👁️\]")]"
		ADD_NEWLINE_IF_NECESSARY(.)
		var/custom_model_name = READ_PREFS(src, text/silicon_model_name)
		if (custom_model_name)
			. += "It is [prefix_a_or_an(custom_model_name)] <em>[get_species_description_href(custom_model_name)]</em> model construct."
		// DOPPLER EDIT END

	. += ..()

#undef ADD_NEWLINE_IF_NECESSARY
