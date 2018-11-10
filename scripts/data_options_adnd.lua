-- 
-- TokenViewOptions Extension -- by Celestian
--
--

function onInit()
  registerOptions();
  -- if this is updated, let the token manager know
  DB.addHandler("options.DM_SHOW_NPC_EFFECTS", "onUpdate", TokenManager.onOptionChanged);
  DB.addHandler("options.DM_SHOW_NPC_HEALTHBAR", "onUpdate", TokenManager.onOptionChanged);
end

function registerOptions()
  -- show npc health bars to DM
  OptionsManager.registerOption2("TNPCH", false, "option_header_token", "option_label_TNPCH", "option_entry_cycler", 
      { labels = "option_val_tooltip|option_val_bar|option_val_barhover|option_val_dot|option_val_dothover", values = "tooltip|bar|barhover|dot|dothover", baselabel = "option_val_off", baseval = "off", default = "dot" });
  -- show npc effects to DM
  OptionsManager.registerOption2("DM_SHOW_NPC_EFFECTS", false, "option_header_token", "option_label_DM_SHOW_NPC_EFFECTS", "option_entry_cycler", 
      { labels = "option_val_tooltip|option_val_icons|option_val_iconshover|option_val_mark|option_val_markhover", values = "tooltip|on|hover|mark|markhover", baselabel = "option_val_off", baseval = "off", default = "on" });
  -- show npc effects to PC
  OptionsManager.registerOption2("TNPCE", false, "option_header_token", "option_label_TNPCE", "option_entry_cycler", 
      { labels = "option_val_tooltip|option_val_icons|option_val_iconshover|option_val_mark|option_val_markhover", values = "tooltip|on|hover|mark|markhover", baselabel = "option_val_off", baseval = "off", default = "on" });
  -- show npc health bars to PC
  OptionsManager.registerOption2("DM_SHOW_NPC_HEALTHBAR", false, "option_header_token", "option_label_DM_SHOW_NPC_HEALTHBAR", "option_entry_cycler", 
      { labels = "option_val_tooltip|option_val_bar|option_val_barhover|option_val_dot|option_val_dothover", values = "tooltip|bar|barhover|dot|dothover", baselabel = "option_val_off", baseval = "off", default = "dot" });
  -- show pc effects to PC
  OptionsManager.registerOption2("TPCE", false, "option_header_token", "option_label_TPCE", "option_entry_cycler", 
      { labels = "option_val_tooltip|option_val_icons|option_val_iconshover|option_val_mark|option_val_markhover", values = "tooltip|on|hover|mark|markhover", baselabel = "option_val_off", baseval = "off", default = "on" });
  -- show pc health bars to PC
  OptionsManager.registerOption2("TPCH", false, "option_header_token", "option_label_TPCH", "option_entry_cycler", 
      { labels = "option_val_tooltip|option_val_bar|option_val_barhover|option_val_dot|option_val_dothover", values = "tooltip|bar|barhover|dot|dothover", baselabel = "option_val_off", baseval = "off", default = "dot" });
end
