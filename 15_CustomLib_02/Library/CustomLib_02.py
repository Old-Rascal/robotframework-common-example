class CustomLib:
    def hello_world(self):
        print "Hello World"

    def print_my_name(self, name):
        print "My name is %s" % (name)

    def account_info(self, username='admin', pwd='admin'):
        print "this is account info username is %s and pwd is %s" % (username, pwd)


class MathLib:
    def __init__(self, num1, num2):
        self._num1 = int(num1)
        self._num2 = int(num2)

    def multiplication_compute(self):
        print "MULTIPLICATION %d + %d" % (self._num1, self._num2)
        return self._num1 * self._num2
