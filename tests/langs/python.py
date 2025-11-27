class Food:
    def __init__(self, name):
        self.name = name
        self.is_eaten = False

    def eat(self):
        print(f"eating {self.name}...")
        self.is_eaten = True


class Ass(Food):
    def __init__(self, gender, race):
        Food.__init__(self, "ass")
        self.gender = gender
        self.race = race


def eat_ass():
    ass = Ass("male", "latin")
    ass.eat()


if __name__ == "__main__":
    eat_ass()
