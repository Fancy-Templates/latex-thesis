# The Thesis Template

[Newest Build of PDF](../-/jobs/artifacts/main/raw/thesis.pdf?job=build-pdf)

<details>
<summary> On newest Builds </summary>
Adapt the following for a link to the newest build:

`https://spgit.informatik.uni-ulm.de/code-inspect/theses/<PATH>/-/jobs/artifacts/main/raw/<FILENAME>.pdf?job=build-pdf`

For example:
<https://spgit.informatik.uni-ulm.de/code-inspect/theses/pengu-peter-master-thesis/thesis/-/jobs/artifacts/main/raw/thesis.pdf?job=build-pdf>

</details>

Please note, that you require `perl` to compile the document if you want to have a glossary (it should be part of texlive). The `makeglossaries` command does not work without it.

## Included Commands

Macros are prefixed with `\`, the others are environments.
The list contains only macros that i consider to be useful in the main document (although there are more).

### Provided by the Template

| Command | Location | Example | Description |
|:----|:----|:-----|:-----|
| `\InputFrom#1` | preamble | `\InputFrom{mySuperFolder}` | Adds `mySuperFolder` to the input path, you no longer have to specify it as part of the path (e.g., when using `\input{mySuperFolder/myFile}`). |
|`\sidecite#1` |  document | `\sidecite{mysuparef1999}` | While `\cite` automatically references the bibliography, as well inserts the citation in the text and in the margin, `\sidecite` omits the reference in the text itself. This can be used to manually adjust the position of a following cite (e.g, if it should not fit on the same page otherwise). |
|`\forcecite#1` | document | `\forcecite{mysuparef1999}` | By default, citations appear only once per section, this *enforces* the citation to appear (with the help of the internal flag `\@sidecite@doreset@true`). |
| `\setchaptertoc` | before `\chapter` | `\setchaptertoc\chapter{Hello}` | Causes the following chapter to receive a mini table of contents  in the sidebar. |
| `\csummary#1`, `\csumnext` |  after `\chapter` | `\chapter{Hello}\csummary{My Amazing\csumnext Chapter Summary}` | Adds a chapter summary in the marginpar of the respective chapter in the main `\tableofcontents` |
| `abstract`  | document | `\begin{abstract}...\end{abstract}` | Adds an abstract section to the document. |
| `acknowledgements` | document | `\begin{acknowledgements}...\end{acknowledgements}` | Adds an acknowledgements section to the document. |
| `conventions` | document | `\begin{conventions}...\end{conventions}` | Adds a conventions section to the document. |
| `\sbseries`, `\textsb` | document | `\textsb{Hello}` | Use a semi-bold font-weight (only works, if the corresponding font has a semi-bold font-weight). |
| `\GlsResetSide#1` | document | `\GlsResetSide{ast}` | Resets the internal flag that prevents the glossary-entry from appearing repeatedly. |
| `\disablesidetrue`, `\noside#1` | document | `\noside{\gls{ast}}` | Temporarily disables the corresponding glossary entry in the marginpar. |
| `\sideref#1` | document | `\sideref{sec:mysec}` | Essentially the command automatically issued by `\cref` to place the corresponding reference in the sidebar. |
| `\link#1#2`, `\link*#1#2` | document | `\link{sec:mysec}{Super Text}` | Essentially `\hyperref[#1]{\itshape#2}`. Without the star, this is automatically placed within the sidebar. With the star, the link is still active, but no longer highlighted. |
| `\sidenote[#1]#2`, `\sidenote*[#1]{#2}` | document | `\sidenote{Hello}` | Places the content in the sidebar. The optional argument can be used for vertical shift adjustments (usually not necessary). The unstarred version does expand its argument (obeying protection rules), the starred version does not. I.e., use the starred version for fragile content (if in doubt, its probably better to use the starred version). |

### Provided by Included Packages

Definitely to be extended :D

| Command | Location | Example | Description |
|:----|:----|:-----|:-----|
| `\cref#1` | document | `\cref{sec:mysec}` | The default reference command by [cleveref](https://ctan.org/pkg/cleveref), to be used instead of `\autoref` etc. |
| `\nth` | document | `\nth{2}` | The default ordinal number command by [nth](https://ctan.org/pkg/nth). |