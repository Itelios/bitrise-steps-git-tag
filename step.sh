#!/bin/bash

if [ -n "${push}" -a "${push}" == "true" -o "${push}" == "false" ]
then
    git tag -fa ${tag} -m "${tag_message}"
    if [ "${push}" == "true" ]; then
        git push --follow-tags
    fi
    if (( $? )); then
        echo "Failure" >&2
        exit 1
    else
        echo "Success, new tags are :"
        echo "$(git tag)"
        # code block that is dependent on success of previous command
    fi
    exit 0
else
    echo "push variable is required and could only be set to true or false"
    exit 1
fi


#
# --- Export Environment Variables for other Steps:
# You can export Environment Variables for other Steps with
#  envman, which is automatically installed by `bitrise setup`.
# A very simple example:
#  envman add --key EXAMPLE_STEP_OUTPUT --value 'the value you want to share'
# Envman can handle piped inputs, which is useful if the text you want to
# share is complex and you don't want to deal with proper bash escaping:
#  cat file_with_complex_input | envman add --KEY EXAMPLE_STEP_OUTPUT
# You can find more usage examples on envman's GitHub page
#  at: https://github.com/bitrise-io/envman

#
# --- Exit codes:
# The exit code of your Step is very important. If you return
#  with a 0 exit code `bitrise` will register your Step as "successful".
# Any non zero exit code will be registered as "failed" by `bitrise`.
