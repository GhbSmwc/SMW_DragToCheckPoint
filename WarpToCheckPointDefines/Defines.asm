;Freeram addresses:
 !Freeram_WarpToLastCheckpoint_Status = $58
  ;^[1 byte] The state of dragging mario to his last checkpoint position:
  ; $00 = Nothing
  ; $01-$FE = "Animation timer" before player is being dragged to last checkpoint.
  ;           this decrements every frame.
  ; $FF = Drag player to last checkpoint

 ;Position storage
  !Freeram_WarpToLastCheckpoint_LastXPos = $60
   ;^[2 bytes] The last X position to warp the player when respawning
  
  !Freeram_WarpToLastCheckpoint_LastYPos = $62
   ;^[2 bytes] Same as above but for Y position.
;Settings:
 !WarpToLastCheckpoint_AnimationDuration = 60  ;>Without "$" means decimal value here.
  ;^How long the animation (in frames) will be before the player is taken to the last checkpoint.
  ; only use values 1-254 (inclusive).
 !WarpToLastCheckpoint_DragSpeed = $50
  ;^Use only values $01-$7F (inclusive). This is the speed on how fast the player is dragged back
  ; to the checkpoint