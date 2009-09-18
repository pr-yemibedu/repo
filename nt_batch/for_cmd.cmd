@echo off
for %%i in (*.*) do (
    if exist "%%i" (
        echo copy %%i
        if exist "%%i" (
            echo log %%i
        )
    )
)
