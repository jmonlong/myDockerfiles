install.packages('tinytex')
tinytex::install_tinytex(dir='/usr/.TinyTeX')

tinytex::tlmgr_install(c('multirow', 'wrapfig', 'colortbl', 'tabu',
                         'varwidth', 'threeparttable', 'threeparttablex',
                         'environ', 'trimspaces', 'ulem', 'makecell', 'xcolor'))
