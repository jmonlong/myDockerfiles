install.packages('tinytex')
tinytex::install_tinytex()

tinytex::tlmgr_install(c('multirow', 'wrapfig', 'colortbl', 'tabu',
                         'varwidth', 'threeparttable', 'threeparttablex',
                         'environ', 'trimspaces', 'ulem', 'makecell', 'xcolor')
