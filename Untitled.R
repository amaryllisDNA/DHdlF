Sys.setenv(DEEPL_API_KEY = "8067a3aa-eeba-47d6-8816-369e0f590bea:fx")



bp_toulouse$contenu_translated <- vapply(
  bp_toulouse$contenu, 
  function(x) apertium_translate(x, "en", "fr"),
  character(1)
)
  
  
google_translate(bp_toulouse[2,]$contenu_raw, target_language = "en", source_language = "fr")

bp_toulouse[2,]$contenu

