# Override jekyll-scholar's `cite` so that {% cite key1 key2 ... %} produces
# one hyperlink per citation key, instead of wrapping the whole rendered
# citation in a single link pointing only to the first key.
#
# Implementation: each key is rendered individually with CSL, the outer
# bracket/paren is stripped, each inner rendering is wrapped in its own <a>,
# and the pieces are rejoined with "; " inside a single outer bracket pair.
#
# Note: rendering keys individually means cross-key disambiguation that CSL
# would normally apply within one cite group (e.g. APA's 2005a/2005b for the
# same author+year) is not performed. Acceptable trade-off for this site.

module Jekyll
  class Scholar
    module Utilities

      BRACKET_PAIRS = { '(' => ')', '[' => ']', '{' => '}' }.freeze

      def cite(keys)
        items = keys.map do |key|
          if bibliography.key?(key)
            entry = bibliography[key]
            cite_cache.getset(key) do
              entry.convert(*bibtex_filters) unless bibtex_filters.empty?
            end
          else
            return missing_reference
          end
        end

        if items.length == 1
          return link_to link_target_for(keys[0]),
                         render_citation(items),
                         { class: config['cite_class'] }
        end

        individual = items.map { |item| render_citation([item]) }

        inner_links = keys.zip(individual).map do |key, rendered|
          open_char, close_char = outer_brackets_for(rendered)
          inner = open_char ? rendered[1..-2] : rendered
          link_to link_target_for(key), inner, { class: config['cite_class'] }
        end

        open_char, close_char = outer_brackets_for(individual.first)
        if open_char
          "#{open_char}#{inner_links.join('; ')}#{close_char}"
        else
          inner_links.join('; ')
        end
      end

      private

      def outer_brackets_for(rendered)
        return [nil, nil] if rendered.nil? || rendered.length < 2
        open_char = rendered[0]
        close_char = BRACKET_PAIRS[open_char]
        return [nil, nil] unless close_char && rendered[-1] == close_char
        [open_char, close_char]
      end

    end
  end
end
