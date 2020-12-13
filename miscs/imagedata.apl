⍝ Port of Visual Basic Image Data subroutines
⍝ By Raghu R(Razetime).
⍝ Fully complete.
 ∇ (d_imageType d_width d_height d_depth)←readImageInfo fileName
 ;d_imageType;d_width;d_height;d_depth;buffer;imgTie;mult;np;pos;⎕IO;LEAVE;ISJPG
  ⍝ initial setup
 ⎕IO←0
  ⍝ Image data
 d_width←0
 d_height←0
 d_depth←0
 d_imageType←⍬
  ⍝ Helper function for reading image data
 mult←{⍺+⍵×256} ⍝ ⍺ → LSB, ⍵ → MSB.
 ⍝ Tie image to last unused number
 imgTie←fileName ⎕NTIE 0
 ⍝ Read the file
 ⍝ File pointer starts at 0, ¯1 reads all bytes
 buffer←⎕NREAD imgTie 83 ¯1
 buffer←256|buffer ⍝ convert buffer to positive range
 ⍝ Recognize the file
 :If (137 80 78)≡3↑buffer ⍝ PNG file
     d_imageType←'PNG'
 ⍝ Select bit-depth
     np←buffer[24]
     :Select buffer[25]
     :Case 0
 ⍝ Greyscale
         d_depth←np
     :Case 2
 ⍝ RGB
         d_depth←np×3
     :Case 3
 ⍝ Palette based, 8bpp(not sure what that means)
         d_depth←8
     :Case 4
 ⍝ Greyscale, with alpha
         d_depth←np×2
     :Case 6
 ⍝ RGB, with alpha
         d_depth←np×4
     :Else
         d_imageType←'Unknown'
     :EndSelect
 ⍝ If the image is valid, get width and height
     :If d_imageType≡'PNG'
         d_width←mult/buffer[19 18]
         d_height←mult/buffer[23 22]
     :EndIf
 :ElseIf (71 73 70)≡3↑buffer ⍝ GIF file
     d_imageType←'GIF'
 ⍝ Get dimensions
     d_width←mult/buffer[6 7]
     d_height←mult/buffer[8 9]
 ⍝ Bit depth
     d_depth←1+buffer[10]{⍉2⊥∧/2⊥⍣¯1⍉⍺,[¯0.5]⍵}7
 :ElseIf (66 77)≡2↑buffer ⍝ BMP file
     d_imageType←'BMP'
 ⍝ Get dimensions
     d_width←mult/buffer[18 19]
 ⍝  Convert to signed integer if negative, since bitmaps can have negative height
     d_height←{⍵≥2*15:⍵|65536 ⋄ ⍵}mult/buffer[22 23]
 ⍝ Bit depth
     d_depth←buffer[28]
 :ElseIf d_imageType≡⍬ ⍝ Possibly JPG/JPEG
 ⍝ Looks for FF D8 FF which is 255, 216, 255
 ⍝ To see if there is any FF,D8,FF (empty if non-jpeg)
 ⍝ get first jpeg marker which matches required spec
     pos←⍸(255 216 255)⍷buffer
     :If ~×≢pos
         d_imageType←'Unknown'
         →LEAVE
     :EndIf
     pos+←2
     :While pos<10-⍨≢buffer
 ⍝ Get to next label
         :While ~(buffer[pos]=255)∧buffer[pos+1]≠255
         :AndIf pos<10-⍨≢buffer
             pos+←1
         :EndWhile
         pos+←1
         ⎕←pos
         :If buffer[pos]∊192,193,194,195,197,198,199,201,202,203,205,206,207
             →ISJPG
         :Else
             pos+←mult/buffer[pos+2 1]
         :EndIf
     :EndWhile
ISJPG:
     d_imageType←'JPG'
 ⍝ get the two required bytes, and get dims
     d_height←mult/buffer[pos+5 4]
     d_width←mult/buffer[pos+7 6]
 ⍝ Color depth
     d_depth←buffer[pos+8]×8
 :EndIf
LEAVE:
 ⍝ Untie the opened image
 ⎕NUNTIE imgTie
 ∇