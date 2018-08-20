#!/bin/sh
echo "------------------------------------------------------------------------"
echo "Runing: i3c-selenoid/pwd/bootstrap ..."

curl -sSL https://raw.githubusercontent.com/virtimus/i3c/master/bootstrap.sh | bash

/i exe i3c /waitReady.sh

/i exe i3c "/i cloneUdfAndRun https://github.com/virtimus i3c-selenoid selenoid"
/i exe i3c "/i cloneUdfAndRun https://github.com/virtimus i3c-selenoid selenoid-ui"

echo "End: i3c-selenoid/pwd/bootstrap."
echo "------------------------------------------------------------------------"