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