AskName macro x,y

    drawSquare 0,0,200,320,03h
    drawLine 0,150,320,02h
    drawLine 0,151,320,02h
    drawLine 0,152,320,02h
    drawSquare 0,153,200,320,06h
    mov ah,02h
    mov dl,x
    mov dh,y
    int 10h
    lea dx,ask_name
    mov ah,9h
    int 21h

    lea dx,playerName
    mov ah,3fh
    int 21h

endm

displayName macro

    mov ah,02h
    mov dl,0
    mov dh,0
    int 10h
    lea dx,playerName
    mov ah,9h
    int 21h
    
    mov ah,3dh
    mov al,0
    mov dx,offset high_score
    int 21h
    mov handle,ax
        
    mov ah,3fh
    mov cx,16
    lea dx,buffer1
    mov bx,handle
    int 21h

    mov ah,3eh
    int 21h

    print buffer1

endm

print macro p1
    lea dx,p1
    mov ah,09h
    int 21h
endm

;===============================================
;*******************DISPLAY cactus1**************
cactus_display1 macro x1,x2

mov di,x2
sub di,2
drawSquare x1,130,151,x2,0Ah  ;root

mov si,x1
add si,1
mov di,x2
sub di,1
drawSquare si,129,130,di,0Ah

mov si,x1
sub si,6
mov di,x2
add di,5
drawSquare si,142,145,di,0Ah

mov si,x1
sub si,1
mov di,x2
sub di,10
drawSquare si,137,145,di,0Ah  ;left arm

mov si,x1
add si,1
mov di,x2
sub di,1
drawSquare si,136,137,di,0Ah  ; tip

mov si,x1
add si,12
mov di,x2
add di,12
drawSquare si,143,144,di,0Ah  ;tip of right arm

mov si,x1
mov di,x1
add di,1
drawSquare si,160,161,di,0Eh

mov si,x1
add si,10
mov di,si
add di,1
drawSquare si,170,171,di,0Eh

mov si,x1
add si,100
mov di,si
add di,1
drawSquare si,190,191,di,0Eh

endm
;===============================================
;*******************DISPLAY cactus2**************
cactus_display2 macro x1,x2
;220  225

mov di,x2
sub di,2
drawSquare x1,130,151,di,0Ah  ;root

mov si,x1
add si,1
mov di,x2
sub di,1
drawSquare si,129,130,di,0Ah

mov si,x1
sub si,5
mov di,x2
add di,7
drawSquare si,144,147,di,0Ah     ;arm

mov si,x1
sub si,2
mov di,x2
sub di,13
drawSquare si,136,147,di,0Ah      ;left

mov si,x1
mov di,x2
sub di,1
drawSquare si,135,136,di,0Ah

mov si,x1
add si,15
mov di,x2
add di,17
drawSquare si,140,147,di,0Ah      ;right

mov si,x1
add si,1
mov di,x2
sub di,1
drawSquare si,139,140,di,0Ah

mov si,x1
mov di,x1
add di,1
drawSquare si,190,191,di,0Eh

mov si,x1
add si,10
mov di,si
add di,1
drawSquare si,180,181,di,0Eh

mov si,x1
add si,50
mov di,si
add di,1
drawSquare si,190,191,di,0Eh

endm

;===============================================
;*******************DISPLAY cactus3**************
cactus_display3 macro x1,x2
;160 165

mov di,x2
sub di,1
drawSquare x1,133,151,di,0Ah  ;root

mov si,x1
add si,1
mov di,x2
sub di,1
drawSquare si,132,133,di,0Ah

mov si,x1
sub si,9
mov di,x2
sub di,3
drawSquare si,137,140,di,0Ah  ;arm

mov si,x1
mov di,x2
sub di,5
drawSquare si,134,137,di,0Ah   ;left

mov si,x1
add si,1
mov di,x2
sub di,1
drawSquare si,133,134,di,0Ah

mov si,x1
add si,13
mov di,x2
add di,14
drawSquare si,129,143,di,0Ah  ;right

mov si,x1
sub si,6
mov di,x2
drawSquare si,139,143,di,0Ah

mov si,x1
add si,7
mov di,x2
drawSquare si,128,129,di,0Ah


mov si,x1
mov di,x1
add di,1
drawSquare si,160,161,di,0Eh

mov si,x1
add si,20
mov di,si
add di,1
drawSquare si,170,171,di,0Eh

mov si,x1
add si,10
mov di,si
add di,1
drawSquare si,190,191,di,0Eh
endm

;===============================================
;*******************DISPLAY cactus4**************
cactus_display4 macro x1,x2

mov di,x2
sub di,2
drawSquare x1,130,151,x2,0Ah  ;root

mov si,x1
add si,1
mov di,x2
sub di,1
drawSquare si,129,130,di,0Ah

mov si,x1
sub si,6
mov di,x2
add di,1
drawSquare si,142,145,di,0Ah

mov si,x1
sub si,1
mov di,x2
sub di,6
drawSquare si,137,145,di,0Ah  ;left arm

mov si,x1
add si,1
mov di,x2
sub di,1
drawSquare si,136,137,di,0Ah  ; tip


mov si,x1
mov di,x1
add di,1
drawSquare si,160,161,di,0Eh

mov si,x1
add si,37
mov di,si
add di,1
drawSquare si,170,171,di,0Eh

mov si,x1
add si,15
mov di,si
add di,1
drawSquare si,190,191,di,0Eh
endm

;===============================================
;*******************DISPLAY cactus5**************
cactus_display5 macro x1,x2
;160 165



mov di,x2
sub di,1
drawSquare x1,133,151,di,0Ah  ;root

mov si,x1
add si,1
mov di,x2
sub di,1
drawSquare si,132,133,di,0Ah

mov si,x1
add si,6
mov di,x2
add di,6
drawSquare si,129,143,di,0Ah  ;right

mov si,x1
sub si,6
mov di,x2
drawSquare si,139,143,di,0Ah

mov si,x1
add si,6
mov di,x2
sub di,1
drawSquare si,128,129,di,0Ah


mov si,x1
mov di,x1
add di,1
drawSquare si,160,161,di,0Eh

mov si,x1
add si,67
mov di,si
add di,1
drawSquare si,170,171,di,0Eh

mov si,x1
add si,18
mov di,si
add di,1
drawSquare si,190,191,di,0Eh
endm

;===============================================
;*******************DISPLAY cactus6**************
cactus_display6 macro x1,x2
;160 165


mov di,x2
sub di,2
drawSquare x1,133,151,di,0Ah  ;root

mov si,x1
add si,1
mov di,x2
sub di,1
drawSquare si,132,133,di,0Ah

mov si,x1
add si,6
mov di,x2
add di,8
drawSquare si,131,135,di,0Ah  ;right

mov si,x1
sub si,6
mov di,x2
drawSquare si,135,138,di,0Ah

mov si,x1
add si,2
mov di,x2
add di,3
drawSquare si,145,148,di,0Ah

mov si,x1
add si,9
mov di,x2
add di,2
drawSquare si,138,148,di,0Ah

mov si,x1
sub si,20
mov di,x2
sub di,20
drawSquare si,135,144,di,0Ah  ;left arm

mov si,x1
add si,1
mov di,x2
sub di,1
drawSquare si,134,135,di,0Ah  ; tip

mov si,x1
sub si,1
mov di,x2
add di,8
drawSquare si,142,145,di,0Ah


mov si,x1
mov di,x1
add di,1
drawSquare si,160,161,di,0Eh

mov si,x1
add si,6
mov di,si
add di,1
drawSquare si,170,171,di,0Eh

mov si,x1
add si,76
mov di,si
add di,1
drawSquare si,190,191,di,0Eh
endm
;*****************************************************
;================ helicopter =========================

display_hellicopter2 macro x1,x2
; x1 98   x2  111   
mov si,x1
mov di,x2
drawSquare si , 100+45 , 101+45 , di , 08h  ;base

mov si,x1
add si,4
mov di,x2
sub di,8
drawSquare si , 98+45 , 100+45 , di , 08h

mov si,x1
add si,6
mov di,x2
add di,6
drawSquare si , 98+45 , 100+45 , di , 08h

mov si,x1
sub si,12
mov di,x2
add di,3
drawSquare si , 96+45 , 98+45 , di , 08h     ;body

mov si,x1
sub si,2
mov di,x2
add di,1
drawSquare si , 94+45 , 96+45 , di , 08h

mov si,x1
sub si,2
mov di,x2
add di,1
drawSquare si , 88+45 , 94+45 , di , 08h

mov si,x1
add si,2
mov di,x2
sub di,2
drawSquare si , 86+45 , 88+45, di , 08h

mov si,x1
add si,4
mov di,x2
sub di,2
drawSquare si , 84+45 , 86+45 , di , 08h

mov si,x1
add si,6
mov di,x2
sub di,5
drawSquare si , 80+45 , 84+45 , di , 08h

mov si,x1
sub si,12
mov di,x2
add di,11
drawSquare si ,79+45 , 80+45 , di , 08h        ;fan

mov si,x1
mov di,x2
add di,8
drawSquare si , 90+45 , 93+45 , di , 08h         ;tail

mov si,x1
add si,32
mov di,x2
add di,5
drawSquare si ,88+45 , 94+45 , di , 08h

mov si, x1
sub si,26
mov di,x2
sub di,27
drawSquare si , 89+45 , 93+45 , di , 0Fh

mov si,x1
add si,6
mov di,x2
add di,6
drawSquare si , 89+45 , 93+45 , di , 0Fh

endm
;*****************************************************
;================ helicopter =========================

display_hellicopter1 macro x1,x2
; x1 98   x2  111   
mov si,x1
mov di,x2
drawSquare si , 100+20 , 101+20 , di , 08h  ;base

mov si,x1
add si,4
mov di,x2
sub di,8
drawSquare si , 98+20 , 100+20 , di , 08h

mov si,x1
add si,6
mov di,x2
add di,6
drawSquare si , 98+20 , 100+20 , di , 08h

mov si,x1
sub si,12
mov di,x2
add di,3
drawSquare si , 96+20 , 98+20 , di , 08h     ;body

mov si,x1
sub si,2
mov di,x2
add di,1
drawSquare si , 94+20 , 96+20 , di , 08h

mov si,x1
sub si,2
mov di,x2
add di,1
drawSquare si , 88+20 , 94+20 , di , 08h

mov si,x1
add si,2
mov di,x2
sub di,2
drawSquare si , 86+20 , 88+20, di , 08h

mov si,x1
add si,4
mov di,x2
sub di,2
drawSquare si , 84+20 , 86+20 , di , 08h

mov si,x1
add si,6
mov di,x2
sub di,5
drawSquare si , 80+20 , 84+20 , di , 08h

mov si,x1
sub si,12
mov di,x2
add di,11
drawSquare si ,79+20 , 80+20 , di , 08h        ;fan

mov si,x1
mov di,x2
add di,8
drawSquare si , 90+20 , 93+20 , di , 08h         ;tail

mov si,x1
add si,32
mov di,x2
add di,5
drawSquare si ,88+20 , 94+20 , di , 08h

mov si, x1
sub si,26
mov di,x2
sub di,27
drawSquare si , 89+20 , 93+20 , di , 0Fh

mov si,x1
add si,6
mov di,x2
add di,6
drawSquare si , 89+20 , 93+20 , di , 0Fh

endm
;=====================================================
;***************** clouds***************
display_clouds macro x1,x2
;30,67
drawSquare x1,40,45,x2,0Fh

mov si,x1
sub si,20
mov di,x2
add di,10
drawSquare si,33,40,di,0Fh

mov si,x1
add si,5
mov di,x2
sub di,5
drawSquare si,30,33,di,0Fh

mov si,x1
add si,10
mov di,x2
sub di,2
drawSquare si,26,30,di,0Fh

mov si,x1
add si,15
mov di,x2
sub di,10
drawSquare si,20,26,di,0Fh

endm
;=====================================================
;***********************DINO**************************

display_Dino_leg1 macro x,y1,y2

    mov si,y1
    mov di,y2
    add si,1
    add di,1
    mov ax,x
    sub ax,4
    mov bx,x
    sub bx,1
    drawSquare ax, y1, y2, bx, 0h     ;leg 1
    mov di,y1
    mov si,y1
    sub si,1
    add di,1
    mov ax,x
    mov bx,x
    sub ax,4
    sub bx,3
    drawSquare ax, si, di, bx, 0h
    mov di,y1
    mov si,y1
    sub si,1
    add di,1
    mov ax,x
    mov bx,x
    sub ax,4
    sub bx,3
    drawSquare ax, si, di, bx, 0h
endm

display_Dino_leg2 macro x,y1,y2

    mov si,y1
    mov di,y2
    add si,1
    add di,1
    mov ax,x
    mov bx,x
    add ax,2
    add bx,5
    drawSquare ax, si, di, bx, 0h     ;leg 1
    mov di,y1
    mov si,y1
    sub si,1
    add di,1
    mov ax,x
    mov bx,x
    add ax,2
    add bx,3
    drawSquare ax, si, di, bx, 0h
    mov di,y1
    mov si,y1
    sub si,1
    add di,1
    mov ax,x
    mov bx,x
    add ax,2
    add bx,3
    drawSquare ax, si, di, bx, 0h
    
endm

display_DINO macro x,y1,y2

; 143 , 144
mov ax,x
mov bx,x
sub ax,4
add bx,4
drawSquare ax, y1, y2, bx, 0h     ;tummy

mov si,y1
sub si,1
mov di,y2
sub di,1
mov ax,x
mov bx,x
sub ax,5
add bx,5
drawSquare ax, si, di,bx, 0h

mov si,y1
sub si,1
mov di,y2
sub di,1
mov ax,x
mov bx,x
sub ax,6
add bx,6
drawSquare ax, si, di, bx, 0h

mov si,y1
sub si,1
mov di,y2
sub di,1
mov ax,x
mov bx,x
sub ax,10
add bx,7
drawSquare ax, si, di, bx, 0h

mov si,y1
sub si,1
mov di,y2
sub di,1
mov ax,x
mov bx,x
add bx,8
sub ax,11
drawSquare ax, si, di, bx, 0h

mov si,y1
sub si,1
mov di,y2
sub di,1
mov ax,x
mov bx,x
sub ax,11
add bx,8
drawSquare ax, si, di, bx, 0h

mov si,y1
mov di,y2
mov ax,x
mov bx,x
sub ax,10
add bx,8
drawSquare ax, si, di, bx, 0h

mov si,y1
sub si,1
mov di,y2
sub di,1
mov ax,x
mov bx,x
sub ax,9
add bx,8
drawSquare ax, si, di, bx, 0h

mov si,y1
sub si,1
mov di,y2
sub di,1
mov ax,x
mov bx,x
sub ax,8
add bx,8
drawSquare ax, si, di, bx, 0h

mov si,y1
sub si,1
mov di,y2
sub di,1
mov ax,x
mov bx,x
sub ax,7
add bx,8
drawSquare ax, si, di, bx, 0h

mov si,y1
sub si,1
mov di,y2
sub di,1
mov ax,x
mov bx,x
sub ax,6
add bx,8
drawSquare ax, si, di, bx, 0h

mov si,y1
sub si,1
mov di,y2
sub di,1
mov ax,x
mov bx,x
sub ax,5
add bx,7
drawSquare ax, si, di, bx, 0h

mov si,y1
sub si,1
mov di,y2
sub di,1
mov ax,x
mov bx,x
sub ax,3
add bx,7
drawSquare ax, si, di, bx, 0h

mov si,y1
sub si,1
mov di,y2
sub di,1
mov ax,x
mov bx,x
add bx,7
drawSquare ax, si, di, bx, 0h

mov si,y1
sub si,1
mov di,y2
sub di,1
mov ax,x
mov bx,x
add ax,1
mov bx,7
drawSquare ax, si, di, bx, 0h

; 143 144
mov si,y1
mov di,y2
mov ax,x
mov bx,x
add bx,9
drawSquare ax, si, di, bx, 0h     ;head

mov si,y1
sub si,1
mov di,y2
sub di,1
mov ax,x
mov bx,x
sub ax,1
add bx,12
drawSquare  ax, si, di, bx, 0h

mov si,y1
sub si,1
mov di,y2
sub di,1
mov ax,x
mov bx,x
sub ax,2
add bx,14
drawSquare ax, si, di, bx, 0h

mov si,y1
sub si,1
mov di,y2
mov ax,x
mov bx,x
sub ax,2
add bx,7
drawSquare ax, si, di, bx, 0h

mov si,y1
sub si,1
mov di,y2
sub di,1
mov ax,x
mov bx,x
sub ax,2
add bx,14
drawSquare ax, si, di, bx, 0h

mov si,y1
sub si,1
mov di,y2
sub di,2
mov ax,x
mov bx,x
sub ax,1
add bx,14
drawSquare ax, si, di, bx, 0h

mov si,y1
sub si,1
mov di,y2
sub di,1
mov ax,x
mov bx,x
sub ax,1
add bx,14
drawSquare ax, si, di, bx, 0h

mov si,y1
sub si,1
mov di,y2
sub di,1
mov ax,x
mov bx,x
add ax,1
add bx,11
drawSquare ax, si, di, bx, 0h

mov si,y1
add si,2
mov di,y2
add di,2
mov ax,x
mov bx,x
add ax,8
add bx,9
drawSquare ax, si, di, bx, 04h      ;eye
; 143 , 144

mov si,y1
add si,11
mov di,y2
add di,12
mov ax,x
mov bx,x
add ax,8
add bx,11
drawSquare ax,si,di,bx,0h         ;hands

mov si,y1
add si,1
mov di,y2
mov ax,x
mov bx,x
add ax,10
add bx,11
drawSquare ax,si,di,bx,0h

mov si,y1
mov di,y2
add di,3
mov ax,x
sub ax,11
drawYLine ax,si,di,0h          ;Tail

mov si,y1
sub si,1
mov di,y2
sub di,1
mov ax,x
sub ax,12
drawYLine ax,si,di,0h

mov si,y1
sub si,1
mov di,y2
sub di,1
mov ax,x
sub ax,13
drawYLine ax,si,di,0h

mov si,y1
sub si,1
mov di,y2
sub di,1
mov ax,x
sub ax,14
drawYLine ax,si,di,0h

endm
;***********************************************
;================== bend dino ==================


display_BendDINO macro x,y1,y2
; 143 , 144

mov si,y1
mov di,y2
mov ax,x
mov bx,x
sub ax,5
add bx,9
drawSquare ax , si , di ,bx , 0h

mov si,y1
sub si,1
mov di,y2
sub di,1
mov ax,x
mov bx,x
sub ax,7
add bx,11
drawSquare ax , si , di ,bx , 0h 

mov si,y1
sub si,1
mov di,y2
mov ax,x
mov bx,x
sub ax,8
add bx,13
drawSquare ax , si , di ,bx , 0h

mov si,y1
sub si,1
mov di,y2
sub di,2
mov ax,x
mov bx,x
sub ax,10
add bx,15
drawSquare ax , si , di ,bx , 0h

mov si,y1
sub si,1
mov di,y2
sub di,0
mov ax,x
mov bx,x
sub ax,13
add bx,17
drawSquare ax , si , di ,bx , 0h 

mov si,y1
sub si,1
mov di,y2
sub di,2
mov ax,x
mov bx,x
sub ax,13
add bx,19
drawSquare ax , si , di ,bx , 0h

mov si,y1
sub si,1
mov di,y2
mov ax,x
mov bx,x
sub ax,11
add bx,21
drawSquare ax , si , di ,bx , 0h 

mov si,y1
sub si,1
mov di,y2
sub di,1
mov ax,x
mov bx,x
sub ax,9
add bx,23
drawSquare ax , si , di ,bx , 0h

mov si,y1
sub si,1
mov di,y2
sub di,2
mov ax,x
mov bx,x
sub ax,7
add bx,17
drawSquare ax , si , di ,bx , 0h

mov si,y1
sub si,1
mov di,y2
sub di,1
mov ax,x
mov bx,x
sub ax,5
add bx,15
drawSquare ax , si , di ,bx , 0h

mov si,y1
sub si,1
mov di,y2
sub di,1
mov ax,x
mov bx,x
sub ax,3
add bx,13
drawSquare ax , si , di ,bx , 0h

mov si,y1
add si,4
mov di,y2
add di,4
mov ax,x
mov bx,x
sub ax,13
sub bx,12
drawSquare ax , si , di , bx , 0h

mov si,y1
sub si,0
mov di,y2
mov ax,x
mov bx,x
sub ax,14
sub bx,13
drawSquare ax , si , di , bx , 0h

mov si,y1
sub si,1
mov di,y2
sub di,1
mov ax,x
mov bx,x
sub ax,16
sub bx,14
drawSquare ax , si , di , bx , 0h

mov si,y1
add si,3
mov di,y2
add di,3
mov ax,x
mov bx,x
add ax,20
add bx,30
drawSquare ax, si, di, bx, 0h     ;heads

mov si,y1
sub si,1
mov di,y2
sub di,1
mov ax,x
mov bx,x
add ax,20
add bx,33
drawSquare ax, si, di, bx, 0h

mov si,y1
sub si,2
mov di,y2
sub di,1
mov ax,x
mov bx,x
add ax,19
add bx,35
drawSquare ax, si, di, bx, 0h

mov si,y1
add si,1
mov di,y2
add di,1
mov ax,x
mov bx,x
add ax,19
add bx,28
drawSquare ax, si, di, bx, 0h

mov si,y1
sub si,2
mov di,y2
sub di,3
mov ax,x
mov bx,x
add ax,19
add bx,35
drawSquare ax, si, di, bx, 0h

mov si,y1
sub si,1
mov di,y2
sub di,1
mov ax,x
mov bx,x
add ax,20
add bx,34
drawSquare ax, si, di, bx, 0h

mov si,y1
sub si,1
mov di,y2
sub di,1
mov ax,x
mov bx,x
add ax,20
add bx,34
drawSquare ax, si, di, bx, 0h

mov si,y1
sub si,1
mov di,y2
sub di,1
mov ax,x
mov bx,x
add ax,22
add bx,32
drawSquare ax, si, di, bx, 0h

mov si,y1
add si,1
mov di,y2
add di,1
mov ax,x
mov bx,x
add ax,29
add bx,30
drawSquare ax, si, di, bx, 04h 

endm

;**************************************

;x=x-axis, y=y-axis, len=x+lenght, clr=color
drawYLine macro x,y,len,clr
    mov cx,x
    mov dx,y
    mov ax,clr
    .while (dx<len)
        mov ah,0ch
        int 10h
        add dx,1
    .endw
endm

;x=x-axis, y=y-axis, len=x+lenght, clr=color
drawLine macro x,y,len,clr
    mov cx,x
    mov dx,y
    mov ax,clr
    .while (cx<len)
        mov bh,0
        mov ah,0ch
        int 10h
        add cx,1
    .endw
endm

;x=x-axis, y=y-axis, len=x+lenght, clr=color
drawColorLine macro x,y,len,clr
    mov cx,x
    mov dx,y
    mov al,clr
    .while (cx<len)
        mov bh,0
        mov ah,0ch
        int 10h
        add cx,1
        add al,1
    .endw
endm

;x=x-axis, y=y-axis, len=y+lenght, wid=x+width, clr=color
drawSquare macro x,y,len,wid,clr
    mov dx,y
    .while(dx<len)
        drawLine x,dx,wid,clr
        add dx,1
    .endw
endm

drawHeart macro x,y,size,clr
    mov cx,x
    mov dx,y
    mov ax,size
    mov bx,y
    add bx,3
    .while(ax>0)
        push cx
        push dx
        push bx
        push ax
        drawYLine cx,dx,bx,clr
        pop ax
        pop bx
        pop dx
        pop cx
        sub dx,1
        add bx,1
        add cx,1
        sub ax,1
    .endw
    mov ax,size
    .while(ax>0)
        push cx
        push dx
        push ax
        push bx
        drawYLine cx,dx,bx,clr
        pop bx
        pop ax
        pop dx
        pop cx
        add cx,1
        add bx,1
        sub ax,1
    .endw
    add dx,1
    push dx
    push bx
    push cx
    drawYLine cx,dx,bx,clr
    pop cx
    pop bx
    pop dx
    sub dx,1
    add cx,1
    sub bx,1
    mov ax,size
    .while(ax>0)
        push ax
        push dx
        push bx
        push cx
        drawYLine cx,dx,bx,clr
        pop cx
        pop bx
        pop dx
        pop ax
        add cx,1
        sub bx,1
        sub ax,1
    .endw
    add dx,1
    mov ax,size
    .while(ax>0)
        push ax
        push cx
        push bx
        push dx
        drawYLine cx,dx,bx,clr
        pop dx
        pop bx
        pop cx
        pop ax
        add dx,1
        sub bx,1
        sub ax,1
        add cx,1
    .endw
endm

;x=x-axis, y=y-axis, len=y+lenght, wid=x+width, clr=color
drawColorSquare macro x,y,len,wid,clr
    mov dx,y
    mov al,clr
    mov ah,0
    .while(dx<len)
        push ax
        drawLine x,dx,wid,al
        pop ax
        add al,1
        add dx,1
    .endw
endm

drawTriangle macro x,y,height,clr
    mov cx,x
    mov dx,y
    mov bx,1
    add bx,cx
    .while(dx<height)
        push bx
        push cx
        push dx
        drawLine cx,dx,bx,clr
        pop dx
        pop cx
        pop bx
        add ax,1
        add bx,1
        sub cx,1
        add dx,1
    .endw
endm

drawColorTriangle macro x,y,height,clr
    mov cx,x
    mov dx,y
    mov bx,1
    add bx,cx
    mov al,clr
    mov ah,0
    .while(dx<height)
        push bx
        push cx
        push dx
        push ax
        drawLine cx,dx,bx,al
        pop ax
        pop dx
        pop cx
        pop bx
        add ax,1
        add bx,1
        sub cx,1
        add dx,1
        add al,1
    .endw
endm

drawHealth macro x,y,heal

    ;Health
    mov ah,02h
    mov dl,x
    mov dh,y
    int 10h
    lea dx,health
    mov ah,9h
    int 21h



    mov al,heal
    mov ah,0
    mov bl,x
    mov bh,0
    add bx,7
    .while(al>0)
        push ax
        mov dl,bl
        mov dh,y
        mov ah,02h
        int 10h
        mov dl,3
        mov ah,2h
        int 21h
        add bl,1
        pop ax
        sub al,1
    .endw
endm

drawScore macro x,y

    mov ax,@data
    mov ds,ax

    ;Score
    mov ah,02h
    mov dl,x
    mov dh,y
    int 10h
    lea dx,score
    mov ah,9h
    int 21h

    ;Score thous

    .if(score_thous>9)
    mov score_hund,0
    mov score_unit,0
    mov score_ten,0
    add score_thous,0
    .endif    
    
    mov dl,x
    mov dh,y
    add dl,10
    mov dl,score_thous
    add dl,48
    mov ah,2h
    int 21h

    ;Score Hund

    .if(score_hund>9)
        mov score_hund,0
        add score_thous,1
    .endif

    mov dl,x
    mov dh,y
    add dl,8
    mov dl,score_hund
    add dl,48
    mov ah,2h
    int 21h

    ;Score ten
    
    .if(score_ten>9)
        mov score_ten,0
        add score_hund,1
    .endif

    mov dl,x
    mov dh,y
    add dl,4
    mov dl,score_ten
    add dl,48
    mov ah,2h
    int 21h

    ;score Unit
    
    .if(score_itr>10)
        .if(score_unit>=9)
            mov score_unit,0
            add score_ten,1
        .else
            add score_unit,1
        .endif
        mov score_itr,0
    .else
     add score_itr,1
    .endif

    mov dl,x
    mov dh,y
    add dl,2
    mov dl,score_unit
    add dl,48
    mov ah,2h
    int 21h


endm

.model small
.stack 200h
.386

.data

    Tr db ?     ;top right coordinate of box
    Tl db ?     ;top left coordinate of box
    Br db ?     ;bottom right coordinate of box
    Bol db ?    ;bottom left coordinate of box
    cr db ?     ;cursor position
    cc db ?     ;cursor position

    D_Tr db ?     ;top right coordinate of dino
    D_Tl db ?     ;top left coordinate of dino
    D_Br db ?     ;bottom right coordinate of dino
    D_Bol db ?    ;bottom left coordinate of dino

    C_Tr db ?     ;top right coordinate of cactus
    C_Tl db ?     ;top left coordinate of cactus
    C_Br db ?     ;bottom right coordinate of cactus
    C_Bol db ?    ;bottom left coordinate of cactus

    x db ?      ;x coordinate for mouse
    y db ?      ;y coordinate for mouse

    x_1 dw 305     ;For cactus one X-coordinate
    y_1 dw 310       ;For cactus one Y-coordinate
    x_2 dw 280    ;For cactus two X-coordinate
    y_2 dw 285    ;For cactus two Y-coordinate
    x_3 dw 105    ;For cactus three X-coordinate
    y_3 dw 110      ;For cactus three Y-coordinate
    x_7 dw 0        ;For cactus four x-coordinate
    y_7 dw 0        ;For cactus four y-coordinate
    x_8 dw 0        ;For cactus five x-coordinate
    y_8 dw 0        ;For cactus five y-coordinate
    x_9 dw 0        ;For cactus six x-coordinate
    y_9 dw 0        ;For cactus six y-coordinate
    x_4 dw 130       ;For cloud X-coordinate
    y_4 dw 167        ;For cloud Y_coordinate
    x_10 dw 40       ;For dino forward/backward movement
    randHeli db 0       ;Randomizer for heli
   
    disheart dw 0
    x_heart dw 320
    y_heart dw 119
    x_5 dw  143    ;For dino Y1-coordinate 
    y_5 dw  144     ;For dino Y2-coordinate

    x_6 dw  145     ;For dino leg Y1-coordinate
    y_6 dw  147     ;For dino leg Y2-coordinate
    legcheck db 0    ;for moving legs
    
    x_h dw  289       ;for helicopter x-coordinate
    y_h dw  302       ;for helicopter y-coordinate
    x_h1 dw 289
    y_h1 dw 302
    str1 db '   START$'
    str2 db 'INSTRUCTIONS$'
    str3 db '   EXIT$'
    health db 'Health: $'
    score db 'Score: $'
    score_ten db 0      ;store tens value of score
    score_unit db 0     ;store unit value of score
    score_hund db 0     ;store hundered value of score
    score_thous db 0    ;store thousand value of score
    score_itr db 0      ;It is used to give a little delay in score add up
    lives_count db 5   ;It keeps track of the lives player got

    checkheli db 0         ;check for helicopter
    dispheli db 0
    
    arr db 5 dup('$')
    arr1 db 5 dup('$')
    i dw 0
    buffer1 db 50 dup('$')
    index dw 0
    high_score db "high.txt",0

    jmpDino db 0     ;check for dino jump
    bendD   db 0        ;check for bend dino
    bendcount db 0
    dispCact db 0       ;Randomizer for cactus
    prevCact db 0       ;Randomizer for cactus
    healthDec db 0      ;Health decrement for dino

    speed dw 2           ;Speed of the Game

    checkstr db 0  ;variable used to print the desired string

    fileName db 'Instruct.txt',0            ;Name of the file
    handle dw 0                             ;File handler
    buffer db 719 dup('$')                  ;Buffer to save data from file

    playerName db 100 dup('$')
    ask_name db 'Enter your name: $'

.code

top:                         ;when going to/back from a selected menu option
    
    mov ax,@data
    mov ds,ax

;=======================setting video mode ==================
mov ah,0
mov al,3h 
int 10h
mov ah,06h

;==========================BACKGROUND======================

mov al,00h
mov bh,01000000b    ;code for red color
mov ch,0
mov cl,0
mov dx, 184fh
int 10h

;================= title ==========================

;printing C

mov ah, 07h         ; printing box
mov al, 00
mov bh,00001111b

mov ch,1           ;setting coordinates of box
mov cl,3  
mov dh,4
mov dl,8 
int 10h

mov ah, 07h         ; printing box
mov al, 00
mov bh,01000000b

mov ch,2           ;setting coordinates of box
mov cl,4  
mov dh,3
mov dl,8 
int 10h

;printing R

mov ah, 07h         ; printing box
mov al, 00
mov bh,00001111b

mov ch,2           ;setting coordinates of box
mov cl,10  
mov dh,4
mov dl,14 
int 10h

mov ah, 07h         ; printing box
mov al, 00
mov bh,01000000b

mov ch,3           ;setting coordinates of box
mov cl,11  
mov dh,4
mov dl,14 
int 10h

;printing a

mov ah, 07h         ; printing box
mov al, 00
mov bh,00001111b

mov ch,2           ;setting coordinates of box
mov cl,16  
mov dh,4
mov dl,20 
int 10h

mov ah, 07h         ; printing box
mov al, 00
mov bh,01000000b

mov ch,3           ;setting coordinates of box
mov cl,17  
mov dh,3
mov dl,19 
int 10h

mov ah, 07h         ; printing box
mov al, 00
mov bh,00001111b

mov ch,4           ;setting coordinates of box
mov cl,19  
mov dh,4
mov dl,21 
int 10h

;printing Z

mov ah, 07h         ; printing box
mov al, 00
mov bh,00001111b

mov ch,1           ;setting coordinates of box
mov cl,23  
mov dh,4
mov dl,27 
int 10h

mov ah, 07h         ; printing box
mov al, 00
mov bh,01000000b

mov ch,2           ;setting coordinates of box
mov cl,23  
mov dh,2
mov dl,25 
int 10h

mov ah, 07h         ; printing box
mov al, 00
mov bh,01000000b

mov ch,3           ;setting coordinates of box
mov cl,26  
mov dh,3
mov dl,27 
int 10h

;printing Y

mov ah, 07h         ; printing box
mov al, 00
mov bh,00001111b

mov ch,1           ;setting coordinates of box
mov cl,29  
mov dh,4
mov dl,33 
int 10h

mov ah, 07h         ; printing box
mov al, 00
mov bh,01000000b

mov ch,1           ;setting coordinates of box
mov cl,30  
mov dh,1
mov dl,32 
int 10h

mov ah, 07h         ; printing box
mov al, 00
mov bh,01000000b

mov ch,3           ;setting coordinates of box
mov cl,29  
mov dh,3
mov dl,32 
int 10h

;printing D

mov ah, 07h         ; printing box
mov al, 00
mov bh,00001111b

mov ch,1           ;setting coordinates of box
mov cl,40  
mov dh,4
mov dl,45 
int 10h

mov ah, 07h         ; printing box
mov al, 00
mov bh,01000000b

mov ch,2           ;setting coordinates of box
mov cl,41  
mov dh,3
mov dl,44 
int 10h

mov ah, 07h         ; printing box
mov al, 00
mov bh,01000000b

mov ch,1           ;setting coordinates of box
mov cl,45  
mov dh,1
mov dl,45 
int 10h

mov ah, 07h         ; printing box
mov al, 00
mov bh,01000000b

mov ch,4           ;setting coordinates of box
mov cl,45  
mov dh,4
mov dl,45 
int 10h

;printing I

mov ah, 07h         ; printing box
mov al, 00
mov bh,00001111b

mov ch,1           ;setting coordinates of box
mov cl,47  
mov dh,4
mov dl,48 
int 10h

mov ah, 07h         ; printing box
mov al, 00
mov bh,01000000b

mov ch,2           ;setting coordinates of box
mov cl,47  
mov dh,2
mov dl,48 
int 10h

;printing N

mov ah, 07h         ; printing box
mov al, 00
mov bh,00001111b

mov ch,2           ;setting coordinates of box
mov cl,50  
mov dh,4
mov dl,54 
int 10h

mov ah, 07h         ; printing box
mov al, 00
mov bh,01000000b

mov ch,3           ;setting coordinates of box
mov cl,51  
mov dh,4
mov dl,53 
int 10h

;printing O

mov ah, 07h         ; printing box
mov al, 00
mov bh,00001111b

mov ch,2           ;setting coordinates of box
mov cl,56  
mov dh,4
mov dl,60 
int 10h

mov ah, 07h         ; printing box
mov al, 00
mov bh,01000000b

mov ch,3           ;setting coordinates of box
mov cl,57  
mov dh,3
mov dl,59 
int 10h

mov ah,0ch
mov al,0fh
mov bh,0
mov cx,10
mov dx,20
int 10h
;====================================================
;=============       menu            ================
;====================================================

mov Tr,12 
mov Tl,30        ;increment to change row
mov Br,14
mov Bol,45     ;increment to change row


mov cr,13
mov cc,32

mov cx,3
dlp1:               ;draw box loop 1
    push cx
    mov ah, 07h         ; printing box
    mov al, 00
    mov bh,00001111b

    mov ch,Tr           ;setting coordinates of box
    mov cl,Tl  
    mov dh,Br
    mov dl,Bol 
    int 10h

    ;                ;===== writing in box
    mov ah,02h     ;cursor position
    mov bh,00
    mov dh,cr
    mov dl,cc
    int 10h

    mov al,checkstr
    cmp al,0
    jne dstr1           ;down string    
    lea dx,str1

    dstr1:
    cmp al,1
    jne dstr2
    lea dx,str2

    dstr2:
    cmp al,2
    jne dstr3
    lea dx,str3
    
    dstr3:
    mov ah, 09h
    int 21h

    add Tr,4
    add br,4
    add cr,4
    add checkstr,1
    pop cx
loop dlp1

;=============== controls for mouse ===================
mouse:
mov ax,01h
int 33h
mov ax, 03h
int 33h

cmp bx, 1
je dv
jmp mouse

dv:

mov ax, dx                   ; dividing by 8 to get y-axis position
mov bl, 8
div bl
mov y, al

mov ax, cx                   ; dividing by 8 to get x-axis position
mov bl, 8
div bl
mov x, al


;=======================================================================
;=============== adding functionalities of on screen buttons ===========
;=======================================================================

;Check for Selecting Start Box
mov al,x
mov bl,30
cmp al,bl
jl mouse

mov al,x
mov bl,45
cmp al,bl
jg mouse

mov al,y
mov bl,12
cmp al,bl
jl mouse

mov al,y
mov bl,14
cmp al,bl
jle start1

;Check for selecting the Instruction Box
mov al,x
mov bl,30
cmp al,bl
jl mouse

mov al,x
mov bl,45
cmp al,bl
jg mouse

mov al,y
mov bl,16
cmp al,bl
jl mouse

mov al,y
mov bl,18
cmp al,bl
jle inst1

;Check for selecting the Exit Box
mov al,x
mov bl,30
cmp al,bl
jl mouse

mov al,x
mov bl,45
cmp al,bl
jg mouse

mov al,y
mov bl,20
cmp al,bl
jl mouse

mov al,y
mov bl,22
cmp al,bl
jg mouse
jle exit1

start1:    
    
    mov ax,13h
    int 10h

    mov ax,@data
    mov ds,ax
    AskName 5,10

draw1:

;///////// changing to GRAPHIC MODE //////////////
    call BACKGROUND_display    

    mov ax,@data
    mov ds,ax

    .if(score_hund>=1 && score_unit ==0 && score_ten ==0)
        add speed,1
    .endif


;Collision
    .if(dispCact == 0 || prevCact == 0)                 ; for cactus 1
       .if( x_1 >=30 && x_1 <= 41 && jmpDino == 0 )
           .if(healthDec == 0)
                sub lives_count,1
                mov healthDec,1
            .endif
       .endif
        .if( x_1 >=30 && x_1 <= 41 && jmpDino == 1 )
           
           .if(y_6>=118)
                .if(healthDec == 0)
                    sub lives_count,1
                    mov healthDec,1
                .endif
            .endif
       .endif
       .if(lives_count<=0)
            call saveinfile
            jmp exit1
        .endif
    .endif

    .if(dispCact == 1 || prevCact == 1)                 ; for cactus 2
       .if( x_2 >=30 && x_2 <= 41 && jmpDino == 0 )
           .if(healthDec == 0)
                sub lives_count,1
                mov healthDec,1
            .endif
       .endif
        .if( x_2 >=30 && x_2 <= 41 && jmpDino == 1 )
            .if(y_6>=118)
                .if(healthDec == 0)
                    sub lives_count,1
                    mov healthDec,1
                .endif
            .endif
       .endif
        .if(lives_count==0)
            call saveinfile
            jmp exit1
        .endif
    .endif

    .if(dispCact == 2 || prevCact == 2)                 ; for cactus 3
       .if( x_3 >=30 && x_3 <= 41 && jmpDino == 0 )
           .if(healthDec == 0)
                sub lives_count,1
                mov healthDec,1
            .endif
       .endif
       .if( x_3 >=30 && x_3 <= 41 && jmpDino == 1 )
            .if(y_6>=118)
                .if(healthDec == 0)
                    sub lives_count,1
                    mov healthDec,1
                .endif
            .endif
       .endif
        .if(lives_count<=0)
            call saveinfile
            jmp exit1
        .endif
    .endif

    .if(dispCact == 3 || prevCact == 3)                 ; for cactus 4
       .if( x_7 >=30 && x_7 <= 41 && jmpDino == 0 )
           .if(healthDec == 0)
                sub lives_count,1
                mov healthDec,1
            .endif
       .endif
      .if( x_7 >=30 && x_7 <= 41 && jmpDino == 1 )
            .if(y_6>=118)
                .if(healthDec == 0)
                    sub lives_count,1
                    mov healthDec,1
                .endif
            .endif
       .endif
        .if(lives_count<=0)
            call saveinfile
            jmp exit1
        .endif
    .endif
    .if(dispCact == 4 || prevCact == 4)                 ; for cactus 5
       .if( x_8 >=30 && x_8 <= 41 && jmpDino == 0 )
           .if(healthDec == 0)
                sub lives_count,1
                mov healthDec,1
            .endif
       .endif
       .if( x_8 >=30 && x_8 <= 41 && jmpDino == 1 )
            .if(y_6>=118)
                .if(healthDec == 0)
                    sub lives_count,1
                    mov healthDec,1
                .endif
            .endif
       .endif
        .if(lives_count<=0)
            call saveinfile
            jmp exit1
        .endif
    .endif
    .if(dispCact == 4 || prevCact == 4)                 ; for cactus 6
       .if( x_9 >=30 && x_9 <= 41 && jmpDino == 0 )
           .if(healthDec == 0)
                sub lives_count,1
                mov healthDec,1
            .endif
       .endif
       .if( x_9 >=30 && x_9 <= 41 && jmpDino == 1 )
            .if(y_6>=118)
                .if(healthDec == 0)
                    sub lives_count,1
                    mov healthDec,1
                .endif
            .endif
       .endif
        .if(lives_count<=0)
            call saveinfile
            jmp exit1 
        .endif
    .endif
    .if(dispCact == 5 || prevCact == 5)                 ; for helli 1
       .if( x_h >=30 && x_h <= 41 && jmpDino == 0 )
           .if(healthDec == 0)
                sub lives_count,1
                mov healthDec,1
            .endif
       .endif
       .if( x_h >=30 && x_h <= 41 && jmpDino == 1 )
            .if(y_6>=118)
                .if(healthDec == 0)
                    sub lives_count,1
                    mov healthDec,1
                .endif
            .endif
       .endif
        .if(lives_count<=0)
            call saveinfile
            jmp exit1 
        .endif
    .endif

    .if(dispCact == 6 || prevCact == 6)                 ; for helli 2
      mov randheli,0
       .if( x_h >=30 && x_h <= 41 && jmpDino == 0 )
           .if(healthDec == 0)
                sub lives_count,1
                mov healthDec,1
            .endif
       .endif
       .if( x_h >=30 && x_h <= 41 && jmpDino == 1 )
            .if(healthDec == 0)
                sub lives_count,1
                mov healthDec,1
            .endif
       .endif
        .if(lives_count<=0)
            call saveinfile
            jmp exit1 
        .endif
    .endif

    .if(dispCact == 0 || prevCact == 0)     ;Cactus 2
        mov si,x_1
        mov di,y_1
        cactus_display2 si,di               ; x1 , x1+5
        mov ax,speed
        sub x_1,ax
        sub y_1,ax   
    .endif


    .if(dispCact == 1 || prevCact == 1)     ;Cactus 1 && Cactus 3 
        mov si,x_2
        mov di,y_2
        cactus_display1 si,di
        mov si,x_3
        mov di,y_3
        cactus_display3 si,di
        mov ax,speed
        sub x_2,ax
        sub y_2,ax
        sub x_3,ax
        sub y_3,ax
    .endif

    .if(dispCact == 2 || prevCact == 2)       ;Cactus 4
        mov si,x_7
        mov di,y_7
        cactus_display4 si,di
        mov ax,speed
        sub x_7,ax
        sub y_7,ax
    .endif

    .if(dispCact == 3 || prevCact == 3)       ;Cactus 5
        mov si,x_8
        mov di,y_8
        cactus_display5 si,di
        mov ax,speed
        sub x_8,ax
        sub y_8,ax
    .endif

    .if(dispCact == 4 || prevCact == 4)       ;Cactus 6
        add disheart,1
        mov si,x_9
        mov di,y_9
        cactus_display6 si,di
        mov ax,speed
        sub x_9,ax
        sub y_9,ax
    .endif

    .if(disheart>=600 && x_heart>40)
            drawHeart x_heart,y_heart,3,04h
            sub x_heart,3
    .endif

    .if(disheart>=600 && x_heart<50)
            drawHeart x_heart,y_heart,3,04h
            mov x_heart,320
            add lives_count,1
            mov disheart,0
    .endif


    .if(dispCact == 5 || prevCact == 5)     ; hellicopter 2
        mov si,x_h
        mov di,y_h
        display_hellicopter2 si,di               ; x1 , x1+5 
        mov ax,speed
        add ax,1
        sub x_h,ax
        sub y_h,ax   
    .endif

    .if(dispCact == 6 || prevCact == 6)     ; hellicopter 1
        mov si,x_h1
        mov di,y_h1
        display_hellicopter1 si,di
        mov ax,speed
        add ax,1
        sub x_h1,ax
        sub y_h1,ax   
    .endif

    ;Clouds Display
    mov si,x_4
    mov di,y_4
display_clouds si,di        ;x1 , x1+37
    
    .if(jmpDino==0 && bendD == 0)                ;At the ground
        mov si,x_5
        mov di,y_5
        display_DINO x_10,si,di         ;x1 , x1+1
    .elseif(bendD == 1 && bendcount<8 && jmpDino == 0)        ;bend
        mov si,x_5
        mov di,y_5
        add bendcount,1 
        display_BendDINO x_10,si,di
    .elseif( bendD == 1 && bendcount>=8 )
        mov bendcount,0
        mov bendD,0   
    
    .elseif(jmpDino==1 && x_5>105 && bendD == 0)              ;Moving up
        sub x_5,2
        sub y_5,2
        mov si,x_5
        mov di,y_5
        display_DINO x_10,si,di
        sub x_6,2
        sub y_6,2
        mov si,x_6
        mov di,y_6
        display_DINO_Leg1 x_10,si,di
        mov si,x_6
        mov di,y_6
        display_DINO_Leg2 x_10,si,di
    .else
        mov jmpDino,2
    .endif

    .if(jmpDino==2 && x_5<143)              ;Moving down
        add x_5,2
        add y_5,2
        mov si,x_5
        mov di,y_5
        display_DINO x_10,si,di
        add x_6,2
        add y_6,2
        mov si,x_6
        mov di,y_6
        display_DINO_Leg1 x_10,si,di
        mov si,x_6
        mov di,y_6
        display_DINO_Leg2 x_10,si,di
    .elseif(x_5==143 && jmpDino == 2)
        mov jmpDino,0
        mov bendD,0
    .endif

    ;cloud movement
    sub x_4,1
    sub y_4,1

    ;Legs Movement

    .if(legcheck==0 && jmpDino==0)
        mov si,145
        mov di,147
        display_Dino_leg1 x_10,si,di
        mov si,148
        mov di,150
        display_Dino_leg2 x_10,si,di
        mov legcheck,1
    .elseif(legcheck==1 && jmpDino==0)
        mov si,145
        mov di,147
        display_Dino_leg2 x_10,si,di
        mov si,148
        mov di,150
        display_Dino_leg1 x_10,si,di
        mov legcheck,0
    .endif

    ;Cactus Movement
    
    .if(x_1<=100 && dispCact == 0)        ;For Cactus 1 and 3
        mov dispCact,1
        mov prevCact,0
        mov x_2,310
        mov y_2,315
        mov x_3,295
        mov y_3,300
        mov healthDec,0
    .elseif(x_1<=0 && prevCact == 0)
        mov prevCact,-1
    .endif

    .if(x_3<=39 && dispCact == 1)       ;For Cactus 4
        mov dispCact,2
        mov x_7,305
        mov y_7,310
        mov prevCact,1
        mov healthDec,0
    .elseif(x_3<=0 && prevCact==1)
        mov prevCact,-1
    .endif

    .if(x_7 <= 149 && dispCact == 2)          ;For cactus 5
        mov dispCact,3
        mov x_8,305
        mov y_8,310
        mov prevCact,2
        mov healthDec,0
    .elseif(x_7 <= 0 && prevCact == 2)
        mov prevCact,-1
    .endif

    .if(x_8<=160 && dispCact == 3)           ;For cactus 6
        mov x_9,305
        mov y_9,310
        mov dispCact,4
        mov prevCact,3
        mov healthDec,0
    .elseif(x_8<=0 && prevCact == 3)
        mov prevCact,-1
    .endif
    
    .if(randHeli == 0)
        .if(x_9 <= 139 && dispCact == 4)        ;For cactus 2
            mov x_h,289
            mov y_h,302
            mov dispCact,5
            mov prevCact,4
            mov healthDec,0
        .elseif(x_9 <= 0 && prevCact == 4)
            mov prevCact,-1
        .endif
    .endif

    .if(randHeli == 1 || randHeli == 2)
        .if(x_9 <= 139 && dispCact == 4)        ;For cactus 2
            mov x_h1,289
            mov y_h1,302
            mov dispCact,6
            mov prevCact,4
            mov healthDec,0
        .elseif(x_9 <= 0 && prevCact == 4)
            mov prevCact,-1
       .endif
    .endif

    .if(randHeli == 0)
        .if(x_h<=69 && dispCact == 5)       ;For helli 1
            mov dispCact,0
            mov x_1,305
            mov y_1,310
            mov prevCact,5
            add randHeli,1
            mov healthDec,0
        .endif
    .elseif(x_h<=10 && prevCact==5)
        mov prevCact,-1
    .endif

    .if(randHeli == 1 || randHeli == 2)
        .if(x_h1<=69 && dispCact == 6)       ;For helli 1
            mov dispCact,0
            mov x_1,305
            mov y_1,310
            mov prevCact,6
            add randHeli,1
            mov healthDec,0
        .endif
    .elseif(x_h1<=10 && prevCact==6)
        mov prevCact,-1
    .endif

    .if(randHeli>=4)
            mov randHeli,0
    .endif

    .if(x_4<=0)
        mov x_4,320
        mov y_4,357
    .endif
    
;For motion
    mov cx,0h
	mov dx,9999h
	mov ah, 86H      ;BIOS Wait/Delay function
    int 15h

    mov ah,1h
    int 16h
    jz draw1
    mov ah,0h
    int 16h
    .if(ah==01)
        je exit
    .elseif((ah==39h || ah == 48h) && jmpDino == 0 && bendD == 0)
        mov jmpDino,1
        jmp draw1
    .elseif((ah==50h ) && jmpDino == 0 && bendD == 0)
        mov bendD,1
        jmp draw1
    .elseif(ah == 4Bh && x_10>=20)      ;Left movement
        sub x_10,1
        jmp draw1
    .elseif(ah == 4Dh && x_10<=45)
        add x_10,1
        jmp draw1
    .else
        jmp draw1
    .endif

inst1:
    mov ah, 07h         ; printing box
    mov al, 00
    mov bh,00101111b

    mov ch,0           ;setting coordinates of box
    mov cl,0  
    mov dh,40
    mov dl,80 
    int 10h

    ;loading file handler
    mov dx,offset fileName
    mov al,0
    mov ah,3dh
    int 21h
    mov handle,ax

    ;reading from file
    mov ah,3fh
    mov bx,handle
    mov cx,lengthof buffer
    mov dx,offset buffer
    int 21h

    ;printing on the screen
    mov ah,02h     ;cursor position
    mov bh,00
    mov dh,0
    mov dl,0
    int 10h

    mov dx,offset buffer
    mov ah,9h
    int 21h

    ;Closing the file
    mov ah,3eh
    int 21h

    jmp exit
    ;Getting value from the user in case of press ESC to move it back to the Menu

KeyBoardInput:
    
    mov ah,1h
    int 16h

    jnz pressed            ;checking if the key is pressed
    jmp KeyBoardInput

    pressed:

        mov ah,0h               ;takes the input value from the buffer
        int 16h

        cmp ah,1                ;check if ESC is pressed
        je top
        jmp KeyBoardInput

exit1:

    mov ax,0600H    ;06 TO SCROLL & 00 FOR FULLJ SCREEN
    mov bh,71H    ;ATTRIBUTE 7 FOR BACKGROUND AND 1 FOR FOREGROUND
    mov cx,0000H    ;STARTING COORDINATES
    mov dx,184FH    ;ENDING COORDINATES
    int 10H 
exit:
print buffer1
mov ah,04ch
int 21h
jmp exit3


;****************************************
;=========== saves high score in file
saveinfile PROC

mov index,0
mov si,offset arr           ;storing hight score in array
mov ah,score_thous
add ah,48
mov [si],ah

inc si
mov ah,score_hund
add ah,48
mov [si],ah

inc si
mov ah,score_ten
add ah,48
mov [si],ah

inc si
mov ah,score_unit
add ah,48
mov [si],ah

mov ah,3dh
mov al,0
mov dx,offset high_score
int 21h
mov handle,ax
    
mov ah,3fh
mov cx,16
lea dx,buffer1
mov bx,handle
int 21h

mov ah,3eh
int 21h

swap:
mov cx,3
lea si,arr
lea di,buffer1
lp1:
    push cx
    mov ax,[si]
    mov bx,[di]
    cmp ax,bx
    jg overwrite
    jl skip

    mov ax,[si+1]
    mov bx,[di+1]
    cmp ax,bx
    jg overwrite
    jl skip

    mov ax,[si+2]
    mov bx,[di+2]
    cmp ax,bx
    jg overwrite
    jl skip
    
    mov ax,[si+3]
    mov bx,[di+3]
    cmp ax,bx
    jg overwrite
skip:
    lea si,arr
    add di,3
    add index,6
    pop cx
loop lp1

jmp endovr
overwrite:
    lea di,buffer1
    lea si,arr
    add di,index
    mov i,0
    mov cx,4
  
    xcg:
        mov al,[si]
        push si
        lea si,arr1
        mov bl,[di]
        add si,i
        mov [si],bl
        mov [di],al
        pop si
        add si,1
        add di,1
        add i,1
    loop xcg

    mov cx,4
    lea si,arr
    lea di,arr1
    restore:
        mov al,[di]
        mov [si],al
        add si,1
        add di,1
    loop restore

mov ah,3ch
mov dx,offset high_score
mov cl,2
int 21h
mov handle,ax
;******************* writing a file
mov  cx, 16  
mov  bx, handle
mov  dx, offset buffer1
mov  ah, 40h
int  21h

mov  ah, 3eh
mov  bx, handle
int  21h 

pop cx
jmp swap
endovr:
ret
saveinfile endp


;===============================================
;*******************DISPLAY BACKGROUNG**********
BACKGROUND_display PROC

;************* ground and sky*********
drawSquare 0,0,200,320,03h
drawLine 0,150,320,02h
drawLine 0,151,320,02h
drawLine 0,152,320,02h
drawSquare 0,153,200,320,06h

    mov ax,@data
    mov ds,ax
    
    ;Draw Health
    drawHealth 12,0,lives_count

    ;Draw Score
    drawScore 28,0

    ;Display name of the player
    displayName

ret
BACKGROUND_display endp
exit3:
end