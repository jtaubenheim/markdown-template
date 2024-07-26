# markdown-template
Hosts markdown document templates and an associated GitHub Pages site for content previewing. Use the hyperlink on the right side of the repo home page to access the preview site. 

## editing files

In the `docs` directory, navigate to the `content` sub-folder. It contains multiple files with different markdown examples that can be edited with your own content. Use the preview tab in the editor to view your edited markdown. 

I've included a live site that will update when changes are commited so that you can also view how your edited markdown will display in final production (you can even use this site to host your final documentation products if you want, I would just give you your own URL like `https://github.com/anheuser-busch/documentation.com` or something to that effect. 

**WARNING** This is a public repository (it has to be for personal accounts in order to deploy a site). If you add proprietary information make sure it you mark the `published:` frontmatter value to `false` or move that file into the `_drafts` folder to exclude it from the build. You can still preview the page by typing in the permalink in the URL bar (e.g., `https://github.com/jtaubenheim/markdown-template/main/somefile.html`). No one else will be able to access that file unless they have explicit knowledge of the permalink (plus no one is going to be looking at this repository besides you anyway, just keep in mind that theorectically this site can be accessed by third parties). 

### note

Changes to the site will only take effect when changes to the files are committed to the `main` branch. The site is deployed using content located in that branch only. If you want to save something as a draft I would suggest committing to a new branch, finishing your edits, then merging with the `main` branch when ready. You will see an option at the very bottom of the editing view asking if you want to commit directly to `main` or a separate branch. I can show you how to merge changes from a separate branch to `main` via a Pull Request if you want to make different branches. 

## CLI method

If you feel confident in using the command line rather than the GitHub GUI you can do so. Follow these steps to add the repo to your local machine:

`git clone https://github.com/jtaubenheim/markdown-template.git`

`cd markdown-template/docs/content`

`nano <file name>`

Nano is my prefferred text editor for CLI editing (you may have to install it locally to use it `sudo apt-get nano`). However there are plenty of alternatives like Vim (vim is harder to learn). 

After your changes are made you can push remotely from your local machine directly to the `main` branch of this repo using:

`git add -A`

`git commit -a` (Enter a short commit message describing the changes you are pushing)

`git push --set-upstream origin main`

You will only have to do that 3rd step for your initial push. After that you can just use `git push` after you have added and committed your changes. 
