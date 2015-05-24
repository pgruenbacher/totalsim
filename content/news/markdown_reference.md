+++
Categories = ["Development"]
Description = "Description appears here"
Tags = ["cfd"]
date = "2015-05-23T16:49:30-04:00"
menu = "news"
title = "markdown_reference"

+++

[link]({{< ref "company.md" >}})

Table of Contents

* [intro](#intro)
* [references](#references)
* [linking](#linking)
* [images](#images)


<a name="intro"></a>
## Intro
This blog uses markdown for content generation. Therefore this post was written in order to provide a quick self-reference for markdown generation.
Much is copied from [daringfireball](http://daringfireball.net/projects/markdown/syntax), adam's [cheatsheset](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet), and from [wikipedia](http://en.wikipedia.org/wiki/Markdown). 

Current tools I use are [sublime-markdown-editing](https://github.com/SublimeText-Markdown/MarkdownEditing). I set the colorscheme dark by going to sublime -> preferences -> settings-More -> syntax specific-User and edited the file to have the configuration:
```json
{
    "color_scheme": "Packages/MarkdownEditing/MarkdownEditor-Dark.tmTheme"
}
```

<a name="references"></a>
## References
Hugo is slightly trickier than other markdown interpreters

___
For tables I simply use html tags. Unfortunately markdown isn't processed within html tags. The pipelines alternative isn't very appealing at all.
```
<table>
    <thead>
        <th>Markdown</th>
        <th>Output</th>
    </thead>
    <tbody>
        <tr>
            <td>Example Markdown</td>
            <td>Example Ouput</td>
        </tr>
    </tbody>
</table>
```

<table>
    <thead>
        <th>Markdown</th>
        <th>Output</th>
    </thead>
    <tbody>
        <tr>
            <td>Example Markdown</td>
            <td>Example Ouput</td>
        </tr>
    </tbody>
</table>
___

```
# Heading 
## Sub-heading 
### Another deeper heading
 
*italic*, **bold**, `monospace`, ~~strikethrough~~ .
 
A [link](http://example.com)

Dot list:

  * apples
  * oranges
 
Numbered list:

  1. apples
  2. oranges
```

# Heading 
## Sub-heading 
### Another deeper heading
 
*italic*, **bold**, `monospace`, ~~strikethrough~~ .
 
A [link](http://example.com)

Dot list:

  * apples
  * oranges
 
Numbered list:

  1. apples
  2. oranges
    
```
> This is the first level of quoting.
>
> > This is nested blockquote.
>
> Back to the first level.
```

> This is the first level of quoting.
>
> > This is nested blockquote.
>
> Back to the first level.

___

<a name="linking"></a>
## Linking
Useful for saving your links in a section of the markdown as references
```
I get 10 times more traffic from [Google] [1] than from
[Yahoo] [2] or (implicit link)-> [MSN] [].
  `[1]: http://google.com/        "Google"`
  `[2]: http://search.yahoo.com/  "Yahoo Search"`
  `[MSN]: http://search.msn.com/    "MSN Search"`

<http://example.com/>
<address@example.com>
Can also link to parts of page using a link tag
[link to header](#headerId)

### Some Header
<a name="headerId"></a>
```

I get 10 times more traffic from [Google] [1] than from
[Yahoo] [2] or (implicit link)-> [MSN] [].
[1]: http://google.com/        "Google"
[2]: http://search.yahoo.com/  "Yahoo Search"
[MSN]: http://search.msn.com/    "MSN Search"

<http://example.com/>
<address@example.com>
Can also link to parts of page using a link tag
[link to header](#headerId)

<a name="headerId"></a>
### Some Header

___

<a name="images"></a>
## Images
```
![Alt text][imageId]

`[imageId]: /images/sample.png  "Image attribute"
```
![Alt text][imageId]

[imageId]: /images/sample.png  "Image attribute"
