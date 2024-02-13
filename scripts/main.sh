#!/bin/bash

# Execute hookscript.sh
echo "Executing hookscript.sh..."
./hookscript.sh

# Check the exit status of hookscript.sh
if [ $? -ne 0 ]; then
    echo "Error: hookscript.sh encountered a problem. Initialization aborted."
    exit 1
fi

# Execute network.sh
echo "Executing network.sh..."
./network.sh

# Check the exit status of network.sh
if [ $? -ne 0 ]; then
    echo "Error: network.sh encountered a problem. Initialization aborted."
    exit 1
fi

# Additional initialization steps if needed
# ...

echo "Initialization completed successfully."
