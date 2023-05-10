# pseudo code

def containerBusyP (self):
    if any self.children.busyP():
        return true
    else:
        return False

def leafBusyP (self):
    return False

def containerStep (self):
    if any self.children.busyP():
        step each self.children
    else if not self.inputq.empty():
        m = self.inputq.dequeue()
        for all c in self.connections:
            c.deliver (self, m)
        
