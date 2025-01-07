# Subtle Ada Bug: Positional Parameter Passing

This repository demonstrates a subtle bug that can occur in Ada due to the language's support for positional parameter passing in function calls.  When using positional parameters, the order of the arguments must exactly match the order of the parameters in the function's declaration.  If the order is incorrect, a runtime error can easily result, sometimes unexpectedly, because Ada allows this potentially hazardous practice.

The `bug.ada` file contains code that shows an example of such an error. The `bugSolution.ada` file corrects the error by explicitly naming the parameters.