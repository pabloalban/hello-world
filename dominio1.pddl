;;;
;;; Ejercicio 1
;;;
;;;;
(define (domain Ambulancia)
   (:requirements :adl :strips :typing :negative-preconditions)
   (:types localizacion paciente - object)
   (:predicates 
                 ;(manejar ?comienzo ?fin - localizacion) 
                 (actual ?posicion - localizacion)
                 (enlace ?comienzo ?fin - localizacion)
                 (visita ?fin - localizacion)
                 (recoje_paciente ?enfermo - paciente ?fin - localizacion)
                 )

   (:action manejar
             :parameters (?comienzo ?fin - localizacion)
             :precondition (and 
                             (actual ?comienzo)
                             (enlace ?comienzo ?fin) 
                             )
             :effect  (and 
                           (actual ?fin)
                           (visita ?fin)
                           (not (actual ?comienzo)))
    ) 


       (:action recojer
             :parameters (?enfermo - paciente ?comienzo ?fin - localizacion)
             :precondition (and 
                             (actual ?comienzo)
                             (enlace ?comienzo ?fin)
                             (not (visita ?fin)) 
                             )
             :effect  (and 
                           (actual ?fin)
                           (visita ?fin)
                           (recoje_paciente ?enfermo ?fin)
                           (not (actual ?comienzo)))
                           
    ) 

    

)

