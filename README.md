##E2SW

Pure Ruby implementation of the Swedish Chef translator.  This project was ported from a flex translator written in 1992 by John Hagerman.  I've attempted to port it as completely as possible, although certain things are still not working as expected.

##Usage

    require 'e2sw'
    translated_string = E2SW.to_sw("i like swedish meatballs")

Which results in a translated string of.

    "i leeke-a svedeesh meetbells"
