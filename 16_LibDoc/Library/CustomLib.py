# To generate the document of the following library execute the following command:
# python -m robot.libdoc --name "My Custom Library" Library\CustomLib.py Docs\CustomLib.html


class CustomLib:
    """
    This is my own custom library.
    It has 3 key words.
    """
    ROBOT_LIBRARY_SCOPE = 'GLOBAL'
    ROBOT_LIBRARY_VERSION = '1.0.0'

    def hello_world():
        """
        Print HELLO WORLD
        """
        print "Hello World"

    def print_my_name(name):
        """
        Give you name. This will print your name.

        Examples:
        | Print Name | myname |
        """
        print "My name is %s" % (name)

    def account_info(username='admin', pwd='admin'):
        """
        Give username and password of account.
        This will print it.

        Examples:
        | Account Info | username=admin | pwd=admin |
        """
        print "this is account info username is %s and pwd is %s" % (username, pwd)
