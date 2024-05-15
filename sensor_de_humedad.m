clc
clear all
global a;
global estado;
global dato;
global times;
global k;
Stop=1;
v=0;
t=0;
times=0;
dato=0;
estado=1;
k=1;
figure(1)
uicontrol('Style','pushbutton','String','STOP','Callback','Stop=0');
r=maquinac(handle,t);
warndlg('Espere un momento')
a=arduino('COM3')
warndlg('Placa acomplada')
tic
while Stop
    r.SetHumedad(h);
    r.Settime(t);
    r.estados;
    r.grafica;
    v=(analogRead(a,0))*(100/1023);
    t=toc;
    k=k+1;
end