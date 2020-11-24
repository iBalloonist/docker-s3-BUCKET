# A simple way to inspect liquid template variables.
# Usage:
#  Can be used anywhere liquid syntax is parsed (templates, includes, posts/pages)
#  {{ site | debug }}
#  {{ site.posts | debug }}
#
require 'pp'
module Jekyll
  # Need to overwrite the inspect method here because the original
  # uses < > to encapsulate the psuedo post/page objects in which case
  # the output is taken for HTML tags and hidden from view.
  #
  class Post
    def inspect
      "#Jekyll:Post @i