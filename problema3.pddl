;;;
;;; Ejercicio 3
;;;
;;;;
(define (problem Ejercicio2)
   (:domain Ambulancia)
   (:objects 
    
    Hospital L2 L4 L3 L5 L6 L7 L8 - localizacion
    enfermo - paciente
    
    
    )
   (:init

    ;;; Note: this is a directed graph
    (enlace Hospital L2)
    (enlace L2 L4)
    (enlace L4 L3)
    (enlace L3 L4)
    (enlace L4 L2)
    (enlace L4 L5)
    (enlace L5 L6)
    (enlace L4 L8)
    (enlace L8 L7)
    (enlace L7 L4)
    (enlace L2 Hospital) 
    ;;; start
    (actual Hospital)
   )

   (:goal 
       (and 
        (actual Hospital)

        (visita L8)
        (recoje_paciente enfermo L8)

        )

       )
)
