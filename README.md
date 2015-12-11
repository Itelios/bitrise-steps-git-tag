# Git Tag Step

This step simply put a git tag on the current commit.


## How to use this Step

This step take three inputs : 

- `tag` (default value: $`BITRISE_BUILD_NUMBER`)

The tag you want to set on the current commit 

- `tag_message`

The message to associate to this tag. The tag create on the commit is an annoted tags. 
If no message was given (blank string) that always create annoted tags with empty annotation

- `push` (default value: `true`)

You can define to `false` or `true` if you want or not to push the tags you come to set.


# Credits

[ITELIOS](http://www.itelios.com)

* Main Developer: [Vincent Saluzzo](vincent.saluzzo@itelios.com)

