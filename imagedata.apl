⍝ Port of Visual Basis Image Data subroutines
⍝ By Raghu R.

⎕IO←0
⎕FR←1287
⎕PP←34

d_width ← 0
d_height ← 0
d_depth ← 0
d_imageType ← ⍬

⍝ IF efficiency is required, change this and add control flow statements
⍝ BUFFSIZE ← 65535

⍝ For JPEG reading
⍝ ⍺ → LSB, ⍵ → MSB.
mult ← {⍺+⍵×256}

readImageInfo ← { 
	⍝ ⍵ → Filename → Character Vector.
	⍝ Retrieves image information.

	⍝ Get the next free tie number
	tie ← ¯1+⌊/0,⎕NNUMS
	imgTie ← ⍵ ⎕NTIE tie

	⍝ Read the file
	⍝ File pointer starts at 0, ¯1 reads all bytes
	buffer ← ⎕NREAD tie 83 ¯1

	⍝ Recognize the file
	:If (137 80 78) ≡ 256 | 3 ↑ buffer ⍝ PNG file
		d_imageType ← 'PNG'
		⍝ Select bit-depth
		np ← buffer[24]
		:Select buffer[25]
		:Case 0
			⍝ Greyscale
			d_depth ← np
		:Case 2
			⍝ RGB
			d_depth ← np × 3
		:Case 3
			⍝ Palette based, 8bpp(not sure what that means)
			d_depth ← 8
		:Case 4
			⍝ Greyscale, with alpha
			d_depth ← np × 2
		:Case 6
			⍝ RGB, with alpha
			d_depth ← np × 4
		:Else
			d_imageType←'Unknown'
		:EndSelect

		⍝ If the image is valid, get width and height
		:If d_imageType ≡ 'PNG'
			d_width ← mult / buffer[19 18]
			d_height ← mult / buffer[23 22]
		:EndIf

	:ElseIf (71 73 70) ≡ 256 | 3 ↑ buffer ⍝ GIF file
		d_imageType ← 'GIF'

		⍝ Get dimensions
		d_width ← mult / buffer[6 7]
		d_height ← mult / buffer[8 9]

		⍝ Bit depth
		d_depth ← 1 + buffer[10] ∧ 7

	:ElseIf (66 77) ≡ 256 | 2 ↑ buffer ⍝ BMP file
		d_imageType ← 'BMP'

		⍝ Get dimensions
		d_width ← mult / buffer[18 19]
		d_height ← mult / buffer[22 23]

		⍝ Bit depth
		d_depth ← buffer[28]

	:ElseIf d_imageType ≡ ⍬ ⍝ Possibly JPG/JPEG
		⍝ Looks for FF D8 FF which is 255, 216, 255
		⍝ Takes first position, or 0 if non-png
		pos ← ⊃⍸(255 216 255) ⍷ buffer

		⍝ get all jpeg markers
		markerPos ← ⍸ 255 ⍷ buffer

		dataPos = ⊃⍸buffer[markerPos+1] ∊ 192,193,194,195,197,198,199,201,202,203,205,206,207

		⍝ If the data exists, add in the info.
		:If ×dataPos
			d_imageType ← 'JPG'
			⍝ get the two required bytes, and get dims
			d_height ← buffer[mult / dataPos + 5 4]
			d_width ← buffer[mult / dataPos + 7 6]
			⍝ Color depth
			d_depth ← buffer[dataPos + 8] × 8
		:EndIf
		
	:EndIf

	
}