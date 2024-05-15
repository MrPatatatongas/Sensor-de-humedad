classdef humedad<handle
    properties (SetAccess=private)
    Hs=[];
    tiempo=[];
    end

    methods (Hidden=true)
        function segmentos(obj)
            global a
            pinMode(a,2,'OUTPUT') %a
            pinMode(a,3,'OUTPUT') %b
            pinMode(a,4,'OUTPUT') %c
            pinMode(a,5,'OUTPUT') %d
            pinMode(a,6,'OUTPUT') %e
            pinMode(a,7,'OUTPUT') %f
            pinMode(a,8,'OUTPUT') %g
            pinMode(a,9,'OUTPUT') %p
        end

        function BAJO(obj)
            global a
            pause(1)
            digitalWrite(a,2,0) %a
            digitalWrite(a,3,0) %b
            digitalWrite(a,4,0) %c
            digitalWrite(a,5,1) %d
            digitalWrite(a,6,1) %e
            digitalWrite(a,7,1) %f
            digitalWrite(a,8,0) %g
            digitalWrite(a,9,0) %p
            pause(1)
            digitalWrite(a,2,0) %a
            digitalWrite(a,3,0) %b
            digitalWrite(a,4,0) %c
            digitalWrite(a,5,0) %d
            digitalWrite(a,6,0) %e
            digitalWrite(a,7,0) %f
            digitalWrite(a,8,0) %g
            digitalWrite(a,9,1) %p
            pause(1)
            digitalWrite(a,2,0) %a
            digitalWrite(a,3,1) %b
            digitalWrite(a,4,1) %c
            digitalWrite(a,5,0) %d
            digitalWrite(a,6,1) %e
            digitalWrite(a,7,1) %f
            digitalWrite(a,8,1) %g
            digitalWrite(a,9,0) %p
            pause(1)
            digitalWrite(a,2,0) %a
            digitalWrite(a,3,0) %b
            digitalWrite(a,4,0) %c
            digitalWrite(a,5,0) %d
            digitalWrite(a,6,0) %e
            digitalWrite(a,7,0) %f
            digitalWrite(a,8,0) %g
            digitalWrite(a,9,0) %p
            pause(0.5)
        end
        function ESTANDAR(obj)
            global a
            pause(1)
            digitalWrite(a,2,1) %a
            digitalWrite(a,3,0) %b
            digitalWrite(a,4,1) %c
            digitalWrite(a,5,1) %d
            digitalWrite(a,6,0) %e
            digitalWrite(a,7,1) %f
            digitalWrite(a,8,1) %g
            digitalWrite(a,9,0) %p
            pause(1)
            digitalWrite(a,2,0) %a
            digitalWrite(a,3,0) %b
            digitalWrite(a,4,0) %c
            digitalWrite(a,5,0) %d
            digitalWrite(a,6,0) %e
            digitalWrite(a,7,0) %f
            digitalWrite(a,8,0) %g
            digitalWrite(a,9,1) %p
            pause(1)
            digitalWrite(a,2,0) %a
            digitalWrite(a,3,1) %b
            digitalWrite(a,4,1) %c
            digitalWrite(a,5,0) %d
            digitalWrite(a,6,1) %e
            digitalWrite(a,7,1) %f
            digitalWrite(a,8,1) %g
            digitalWrite(a,9,0) %p
            pause(1)
            digitalWrite(a,2,0) %a
            digitalWrite(a,3,0) %b
            digitalWrite(a,4,0) %c
            digitalWrite(a,5,0) %d
            digitalWrite(a,6,0) %e
            digitalWrite(a,7,0) %f
            digitalWrite(a,8,0) %g
            digitalWrite(a,9,0) %p
            pause(0.5)
        end
        function ALTO(obj)
            global a
            pause(1)
            digitalWrite(a,2,0) %a
            digitalWrite(a,3,1) %b
            digitalWrite(a,4,1) %c
            digitalWrite(a,5,0) %d
            digitalWrite(a,6,1) %e
            digitalWrite(a,7,1) %f
            digitalWrite(a,8,1) %g
            digitalWrite(a,9,0) %p
            pause(1)
            digitalWrite(a,2,0) %a
            digitalWrite(a,3,0) %b
            digitalWrite(a,4,0) %c
            digitalWrite(a,5,0) %d
            digitalWrite(a,6,0) %e
            digitalWrite(a,7,0) %f
            digitalWrite(a,8,0) %g
            digitalWrite(a,9,1) %p
            pause(1)
            digitalWrite(a,2,0) %a
            digitalWrite(a,3,1) %b
            digitalWrite(a,4,1) %c
            digitalWrite(a,5,0) %d
            digitalWrite(a,6,1) %e
            digitalWrite(a,7,1) %f
            digitalWrite(a,8,1) %g
            digitalWrite(a,9,0) %p
            pause(1)
            digitalWrite(a,2,0) %a
            digitalWrite(a,3,0) %b
            digitalWrite(a,4,0) %c
            digitalWrite(a,5,0) %d
            digitalWrite(a,6,0) %e
            digitalWrite(a,7,0) %f
            digitalWrite(a,8,0) %g
            digitalWrite(a,9,0) %p
            pause(0.5)
        end
    end
    methods (Hidden=false)
        function obj=grafica(obj)
            global dato;
            global times;
            global k;
            dato(k)=obj.Hs;
            times(k)=obj.tiempo;
            figure(1)
            plot(times,dato);
            grid on
        end
        function SetHumedad(obj,humedad)
            obj.Hs=humedad;
        end

        function Settime(obj,tiempos)
            obj.tiempo=tiempos;
        end

        function estados(obj)
            global a;
            global estado;
            switch estado
                case 1
                    if (obj.Hs>=0) && (obj.Hs<30)
                        obj.segmentos(); %inicializa los puertos
                        obj.BAJO; %activar la codificacion del cero
                    else
                        obj.segmentos();
                        estado=2;
                    end
                case 2
                    if (obj.Hs>=30) && (obj.Hs<=60)
                        obj.segmentos(); %inicializa los puertos
                        obj.ESTANDAR; %activar la codificacion del uno
                    else
                        obj.segmentos();
                        estado=3;
                    end
                case 3
                    if (obj.Hs>=60) && (obj.Hs<=100)
                        obj.segmentos(); %inicializa los puertos
                        obj.ALTO; %activar la codificacion del dos
                    else
                        obj.segmentos();
                        estado=1;
                    end
            end
        end
        %REALIZAR EL CONSTRUCTOR
        function obj=humedad(H,T)
            obj.SetHumedad(H);
            obj.Settime(T);
        end
    end
end
