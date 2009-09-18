class Base:
    def __init__(self):
        self.x='Base:__init__'
    
    def setX(self, x):
        self.x=x
        
class Super(Base):
    def __init__(self):
        self.y='Super:__init__'
        
    def setY(self, y):
        self.y=y