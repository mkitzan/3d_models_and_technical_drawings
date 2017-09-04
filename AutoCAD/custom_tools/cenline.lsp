; cenline.lsp
; Michael Kitzan
; Sept 4, 17

; Takes a center and line point, and creates a symmetric line centered at the center point

(defun c:cenline (/ center point op_point):
	; gather input from user
	(setq center (getpoint "Specify center point:")):
	(setq point (getpoint "Specify first point:")):
	
	; operations determining opposite point
	(setq op_point (mapcar '- center point))
	(setq op_point (mapcar '+ center op_point))
	
	; execute creation of line from two points
	(command "LINE" op_point point)
)