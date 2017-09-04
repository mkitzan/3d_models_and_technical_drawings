; cenrect.lsp
; Michael Kitzan
; Sept 4, 17

; Takes a center and corner point, and creates a rectangle centered on the center point

(defun c:cenrect (/ center corner op_corner):
	; gather input from user
	(setq center (getpoint "Specify center point:")):
	(setq corner (getpoint "Specify corner point:")):
	
	; operations determining opposite corner
	(setq op_corner (mapcar '- center corner))
	(setq op_corner (mapcar '+ center op_corner))
	
	; execute creation of rectangle from two corner points
	(command "RECTANG" op_corner corner)
)