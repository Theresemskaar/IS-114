
fun nordisk-flagg(width, height, color1, color2, color3) -> Image:
  RatioWLC1 = 6 / 22 
  RatioWLC2 = 7 / 22
  RatioWRC1 = 12 / 22
  RatioWRC2 = 13 / 22
  RatioHC1 = 6 / 16
  RatioHC2 = 7 / 16
  Background = rectangle(width, height, "solid", color3)

  left-color1 = rectangle(RatioWLC1 * width, RatioHC1 * height, "solid", color1)
  left-color2 = rectangle(RatioWLC2 * width, RatioHC2 * height, "solid", color2)
  right-color1 = rectangle(RatioWRC1 * width, RatioHC1 * height, "solid", color1)
  right-color2 = rectangle(RatioWRC2 * width, RatioHC2 * height, "solid", color2)
  
  left-top = overlay-align("left", "top", left-color1, left-color2)
  left-bottom = overlay-align("left", "bottom", left-color1, left-color2)
  right-top = overlay-align("right", "top", right-color1, right-color2)
  right-bottom = overlay-align("right", "bottom", right-color1, right-color2)
  
  flagg = overlay-align("left", "top", left-top, overlay-align("left",
      "bottom", left-bottom, overlay-align("right","top", right-top,
        overlay-align("right", "bottom", right-bottom, Background))))
  
  overlay-align("middle", "middle", rectangle(width, height, "outline", "black"), flagg)
end

nordisk-flagg(220, 160, "crimson", "white", "navy")
nordisk-flagg(370, 280, "crimson", "white", "white")
nordisk-flagg(160, 100, "royal-blue", "gold", "gold")
nordisk-flagg(220, 160, "white", "royal-blue", "crimson")
nordisk-flagg(220, 160, "navy", "white", "crimson")
