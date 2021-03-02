;;;
;;; Ejercicio 1
;;;
;;;;
(define (problem Ejercicio1)
   (:domain Ambulancia)
   (:objects 
    
    Hospital L2 L4 L3 - localizacion
    enfermo1 enfermo2 - paciente
    
    
    )
   (:init

    ;;; Note: this is a directed graph
    (enlace Hospital L2)
    (enlace L2 L4)
    (enlace L4 L3)
    (enlace L3 L4)
    (enlace L4 L2)
    (enlace L2 Hospital) 
    ;;; start
    (actual Hospital)
   )

   (:goal 
       (and 
        (actual Hospital)

        (visita L3)
        (recoje_paciente enfermo1 L3)
        (recoje_paciente enfermo2 L4)
        (visita L4)


        )

       )
)
