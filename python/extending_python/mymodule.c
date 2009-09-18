#include <Python.h>

static PyMethodDef MyMethods[] = {
    {"system",  my_system, METH_VARARGS, "Execute a shell command."},
    {NULL, NULL, 0, NULL}        /* Sentinel */
};

void initspam(void) {
    (void) Py_InitModule("my", MyMethods);
}

static PyObject* my_system(PyObject *self, PyObject *args) {
    char *command;
    int status;

    if (!PyArg_ParseTuple(args, "s", &command))
        return NULL;

    status = system(command);
    return Py_BuildValue("i", status);
}

int main(int argc, char **argv) {
    /* Pass argv[0] to the Python interpreter */
    Py_SetProgramName(argv[0]);

    /* Initialize the Python interpreter.  Required. */
    Py_Initialize();

    /* Add a static module */
    initmy();
}
