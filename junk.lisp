(defstruct Message
  (port (Attribute (String)) .)
  (datum (Attribute (*)) .))
(definit Message/new (%p %d) 
  (mutate (slot port $) %p) 
  (mutate (slot datum $) %d))

(defstruct Message
  (port (Attribute (String)) (lambda () (slot $ 'port)))
  (datum (Attribute (*)) (lambda () (slot $ 'datum))))
(definit Message/new (%p %d) 
  (mutate (slot port $) %p) 
  (mutate (slot datum $) %d))






(defun Output-Message/new (p d) (Message/new p d))
  (mutate (slot component $) C)
    ((or (any child is busy? $) 
	 (any child has inputs pending $))
     #true)

(defun∘Output-Message/new∘(p∘d)∘(Message/new∘p∘d))
∘∘(mutate∘(slot∘component∘$)∘C)
∘∘∘∘((or∘(any∘child∘is∘busy?∘$)∘
∘∘∘∘∘(any∘child∘has∘inputs∘pending∘$))
∘∘∘∘∘#true)

(defun ∘ Output-Message/new (p ∘ d) (Message/new ∘ p ∘ d))
  (mutate (slot ∘ component $) C)
    ((or (any ∘ child ∘ is ∘ busy?) 
	 (any ∘ child ∘ has ∘ inputs ∘ pending))
     #true)
