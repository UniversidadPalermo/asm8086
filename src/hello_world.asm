.model small
.stack 100h

.data
  message db "Hello World!", 13, 10, "$"
.code

start:
  mov ax, @data
  mov ds, ax
  mov ah, 9
  mov dx, offset message
  int 21h
  mov ah, 4ch
  int 21h
  end
end start
