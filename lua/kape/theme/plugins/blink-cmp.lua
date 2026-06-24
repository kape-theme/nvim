-- lua/kape/theme/plugins/blink-cmp.lua
-- Highlight groups for blink.cmp (saghen/blink.cmp).
-- Uses direct scheme colors so Kind icons never inherit italic
-- from linked groups like Type or Structure.

---@type Kape.PluginSpec
return {
  name = "saghen/blink.cmp",

  highlights = function(c, config)
    local transparent = config.transparent

    -- stylua: ignore
    return {
      -- ── Menu window ──────────────────────────────────────────────────────
      BlinkCmpMenu           = { bg = c.editorSuggestWidget.background,
                                 fg = c.editorSuggestWidget.foreground },
      BlinkCmpMenuBorder     = { bg = transparent and "NONE" or c.editorSuggestWidget.background,
                                 fg = c.editorSuggestWidget.border },
      BlinkCmpMenuSelection  = { bg = c.editorSuggestWidget.selectedBackground, bold = true },

      -- ── Scrollbar ─────────────────────────────────────────────────────────
      BlinkCmpScrollBarThumb  = { bg = c.scrollbarSlider.hoverBackground },
      BlinkCmpScrollBarGutter = { bg = c.editorSuggestWidget.background },

      -- ── Label text ────────────────────────────────────────────────────────
      BlinkCmpLabel            = { fg = c.editorSuggestWidget.foreground },
      BlinkCmpLabelDeprecated  = { fg = c.base.dimmed3,  strikethrough = true },
      BlinkCmpLabelMatch       = { fg = c.base.blue,     bold = true },
      BlinkCmpLabelDetail      = { fg = c.base.dimmed3 },
      BlinkCmpLabelDescription = { fg = c.base.dimmed2 },

      -- ── Source badge ──────────────────────────────────────────────────────
      BlinkCmpSource = { fg = c.base.dimmed3, italic = true },

      -- ── Ghost / inline completion text ───────────────────────────────────
      BlinkCmpGhostText = { fg = c.base.dimmed4, italic = true },

      -- ── Documentation window ──────────────────────────────────────────────
      BlinkCmpDoc              = { bg = c.editorHoverWidget.background,
                                   fg = c.editorSuggestWidget.foreground },
      BlinkCmpDocBorder        = { bg = transparent and "NONE" or c.editorHoverWidget.background,
                                   fg = c.editorHoverWidget.border },
      BlinkCmpDocSeparator     = { fg = c.base.dimmed4 },
      BlinkCmpDocCursorLine    = { bg = c.editorSuggestWidget.selectedBackground },

      -- ── Signature help ────────────────────────────────────────────────────
      BlinkCmpSignatureHelp                  = { bg = c.editorHoverWidget.background,
                                                 fg = c.editorSuggestWidget.foreground },
      BlinkCmpSignatureHelpBorder            = { bg = transparent and "NONE" or c.editorHoverWidget.background,
                                                 fg = c.editorHoverWidget.border },
      BlinkCmpSignatureHelpActiveParameter   = { fg = c.base.yellow, bold = true, underline = true },

      -- ── Kind base ─────────────────────────────────────────────────────────
      BlinkCmpKind = { fg = c.base.dimmed2 },

      -- ── Per-kind icons ────────────────────────────────────────────────────
      -- Using direct palette colors avoids inheriting italic from Type / Structure.

      -- Text: plain completion, dimmed so it recedes from real code
      BlinkCmpKindText          = { fg = c.base.dimmed2 },

      -- Methods / functions: orange
      BlinkCmpKindFunction      = { fg = c.base.orange },
      BlinkCmpKindMethod        = { fg = c.base.orange },
      BlinkCmpKindConstructor   = { fg = c.base.orange },

      -- Variables / fields / properties: white or aqua
      -- (aqua matches the Identifier highlight — "things you access by name")
      BlinkCmpKindVariable      = { fg = c.base.white },
      BlinkCmpKindField         = { fg = c.base.aqua },
      BlinkCmpKindProperty      = { fg = c.base.aqua },
      BlinkCmpKindValue         = { fg = c.base.aqua },

      -- Types / structures: red (matches Type / Structure)
      BlinkCmpKindClass         = { fg = c.base.red },
      BlinkCmpKindStruct        = { fg = c.base.red },
      BlinkCmpKindInterface     = { fg = c.base.red },
      BlinkCmpKindTypeParameter = { fg = c.base.red },

      -- Enums: red; members: purple (constant-like)
      BlinkCmpKindEnum          = { fg = c.base.red },
      BlinkCmpKindEnumMember    = { fg = c.base.purple },

      -- Constants: purple
      BlinkCmpKindConstant      = { fg = c.base.purple },

      -- Keywords: red
      BlinkCmpKindKeyword       = { fg = c.base.red },

      -- Operators: green
      BlinkCmpKindOperator      = { fg = c.base.green },

      -- Modules / namespaces: yellow (distinct from types)
      BlinkCmpKindModule        = { fg = c.base.yellow },

      -- Files / folders
      BlinkCmpKindFile          = { fg = c.base.orange },
      BlinkCmpKindFolder        = { fg = c.base.cyan },

      -- Special / snippets / units / colors / references / events
      BlinkCmpKindSnippet       = { fg = c.base.orange },
      BlinkCmpKindUnit          = { fg = c.base.orange },
      BlinkCmpKindColor         = { fg = c.base.orange },
      BlinkCmpKindReference     = { fg = c.base.orange },
      BlinkCmpKindEvent         = { fg = c.base.red },
    }
  end,
}
