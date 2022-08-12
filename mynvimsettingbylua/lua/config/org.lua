require('neorg').setup {
    load = {
        ["core.defaults"] = {},
        ["core.norg.dirman"] ={
            config = {
                workspaces = {
                    gtd = "~/.cache/org/gtd",
                },
            }
        },
        ["core.norg.qol.toc"] = {},
        ["core.norg.journal"] = {},
        ["core.gtd.base"] = {
            config = { -- Note that this table is optional and doesn't need to be provided
                workspace = "gtd",  
            }
        },
        ["core.norg.concealer"] = {},
        ["core.export"] = {},
        --["core.presenter"] = {
            --config = {
                --zen-mode = {
                    --true
                --},
            --}
        --},
        ["core.norg.manoeuvre"] = {},
        ["core.norg.completion"] = {
            config = {
                engine = "nvim-cmp"
            }
        },
        ["core.integrations.nvim-cmp"] = {
            config = {
                create_source = {
                    "+path"
                }
            }

        },
        ["core.neorgcmd.commands.module.load"] = {},
        ["core.scanner"] = {},
        ["core.export.markdown"] = {},
        ["core.neorgcmd.commands.return"] = {},
        ["core.neorgcmd.commands.module.list"] = {},
        ["core.ui"] = {},
        ["core.queries.native"] = {},
        ["core.gtd.ui"] = {},
        ["core.gtd.helpers"] = {},
        ["core.gtd.queries"] = {},
        ["core.highlights"] = {
            config = {
                SelectionWindow = {
                    Heading = "+TSAnnotation",
                    Arrow = "+Normal",
                    Key = "+TSNamespace",
                    Keyname = "+TSMath",
                    Nestedkeyname = "+TSString",
                },
            
                Tag = {
                    -- The + tells neorg to link to an existing hl
                    Begin = "+TSKeyword",
            
                    -- Supply any arguments you would to :highlight here
                    -- Example: ["end"] = "guifg=#93042b",
                    ["End"] = "+TSKeyword",
            
                    Name = {
                        [""] = "+TSNone",
                        Word = "+TSKeyword",
                    },
            
                    Parameter = "+TSType",
                },
            
                CarryoverTag = {
                    Begin = "+TSLabel",
            
                    Name = {
                        [""] = "+TSNone",
                        Word = "+TSLabel",
                    },
            
                    Parameter = "+TSString",
                },
            
                Heading = {
                    ["1"] = {
                        Title = "+TSAttribute",
                        Prefix = "+TSAttribute",
                    },
                    ["2"] = {
                        Title = "+TSLabel",
                        Prefix = "+TSLabel",
                    },
                    ["3"] = {
                        Title = "+TSMath",
                        Prefix = "+TSMath",
                    },
                    ["4"] = {
                        Title = "+TSString",
                        Prefix = "+TSString",
                    },
                    ["5"] = {
                        Title = "+TSLabel",
                        Prefix = "+TSLabel",
                    },
                    ["6"] = {
                        Title = "+TSMath",
                        Prefix = "+TSMath",
                    },
                },
            
                Error = "+TSError",
            
                Marker = {
                    [""] = "+TSLabel",
                    Title = "+TSNone",
                },
            
                Definition = {
                    [""] = "+TSPunctDelimiter",
                    End = "+TSPunctDelimiter",
                    Title = "+TSStrong",
                    Content = "+TSEmphasis",
                },
            
                Footnote = {
                    [""] = "+TSPunctDelimiter",
                    End = "+TSPunctDelimiter",
                    Title = "+TSStrong",
                    Content = "+TSEmphasis",
                },
            
                EscapeSequence = "+TSType",
            
                TodoItem = {
                    ["1"] = {
                        [""] = "+NeorgUnorderedList1",
            
                        Undone = "+TSPunctDelimiter",
                        Pending = "+TSNamespace",
                        Done = "+TSString",
                        Cancelled = "+Whitespace",
                        Urgent = "+TSDanger",
                        OnHold = "+TSNote",
                        Recurring = "+TSRepeat",
                        Uncertain = "+TSBoolean",
                    },
                    ["2"] = {
                        [""] = "+NeorgUnorderedList2",
            
                        Undone = "+TSPunctDelimiter",
                        Pending = "+TSNamespace",
                        Done = "+TSString",
                        Cancelled = "+Whitespace",
                        Urgent = "+TSDanger",
                        OnHold = "+TSNote",
                        Recurring = "+TSRepeat",
                        Uncertain = "+TSBoolean",
                    },
                    ["3"] = {
                        [""] = "+NeorgUnorderedList3",
            
                        Undone = "+TSPunctDelimiter",
                        Pending = "+TSNamespace",
                        Done = "+TSString",
                        Cancelled = "+Whitespace",
                        Urgent = "+TSDanger",
                        OnHold = "+TSNote",
                        Recurring = "+TSRepeat",
                        Uncertain = "+TSBoolean",
                    },
                    ["4"] = {
                        [""] = "+NeorgUnorderedList4",
            
                        Undone = "+TSPunctDelimiter",
                        Pending = "+TSNamespace",
                        Done = "+TSString",
                        Cancelled = "+Whitespace",
                        Urgent = "+TSDanger",
                        OnHold = "+TSNote",
                        Recurring = "+TSRepeat",
                        Uncertain = "+TSBoolean",
                    },
                    ["5"] = {
                        [""] = "+NeorgUnorderedList5",
            
                        Undone = "+TSPunctDelimiter",
                        Pending = "+TSNamespace",
                        Done = "+TSString",
                        Cancelled = "+Whitespace",
                        Urgent = "+TSDanger",
                        OnHold = "+TSNote",
                        Recurring = "+TSRepeat",
                        Uncertain = "+TSBoolean",
                    },
                    ["6"] = {
                        [""] = "+NeorgUnorderedList6",
            
                        Undone = "+TSPunctDelimiter",
                        Pending = "+TSNamespace",
                        Done = "+TSString",
                        Cancelled = "+Whitespace",
                        Urgent = "+TSDanger",
                        OnHold = "+TSNote",
                        Recurring = "+TSRepeat",
                        Uncertain = "+TSBoolean",
                    },
                },
            
                Unordered = {
                    List = {
                        ["1"] = {
                            [""] = "+TSPunctDelimiter",
                        },
                        ["2"] = {
                            [""] = "+TSPunctDelimiter",
                        },
                        ["3"] = {
                            [""] = "+TSPunctDelimiter",
                        },
                        ["4"] = {
                            [""] = "+TSPunctDelimiter",
                        },
                        ["5"] = {
                            [""] = "+TSPunctDelimiter",
                        },
                        ["6"] = {
                            [""] = "+TSPunctDelimiter",
                        },
                    },
            
                    Link = {
                        ["1"] = {
                            [""] = "+NeorgUnorderedList1",
                        },
                        ["2"] = {
                            [""] = "+NeorgUnorderedList2",
                        },
                        ["3"] = {
                            [""] = "+NeorgUnorderedList3",
                        },
                        ["4"] = {
                            [""] = "+NeorgUnorderedList4",
                        },
                        ["5"] = {
                            [""] = "+NeorgUnorderedList5",
                        },
                        ["6"] = {
                            [""] = "+NeorgUnorderedList6",
                        },
                    },
                },
            
                Ordered = {
                    List = {
                        ["1"] = {
                            [""] = "+TSRepeat",
                        },
                        ["2"] = {
                            [""] = "+TSRepeat",
                        },
                        ["3"] = {
                            [""] = "+TSRepeat",
                        },
                        ["4"] = {
                            [""] = "+TSRepeat",
                        },
                        ["5"] = {
                            [""] = "+TSRepeat",
                        },
                        ["6"] = {
                            [""] = "+TSRepeat",
                        },
                    },
            
                    Link = {
                        ["1"] = {
                            [""] = "+NeorgOrderedList1",
                        },
                        ["2"] = {
                            [""] = "+NeorgOrderedList2",
                        },
                        ["3"] = {
                            [""] = "+NeorgOrderedList3",
                        },
                        ["4"] = {
                            [""] = "+NeorgOrderedList4",
                        },
                        ["5"] = {
                            [""] = "+NeorgOrderedList5",
                        },
                        ["6"] = {
                            [""] = "+NeorgOrderedList6",
                        },
                    },
                },
            
                Quote = {
                    ["1"] = {
                        [""] = "+TSPunctDelimiter",
                        Content = "+TSPunctDelimiter",
                    },
                    ["2"] = {
                        [""] = "+Blue",
                        Content = "+Blue",
                    },
                    ["3"] = {
                        [""] = "+Yellow",
                        Content = "+Yellow",
                    },
                    ["4"] = {
                        [""] = "+Red",
                        Content = "+Red",
                    },
                    ["5"] = {
                        [""] = "+Green",
                        Content = "+Green",
                    },
                    ["6"] = {
                        [""] = "+Brown",
                        Content = "+Brown",
                    },
                },
            
                Anchor = {
                    Declaration = {
                        Delimiter = "+NonText",
                        Text = "+TSTextReference",
                    },
                    Definition = {
                        Delimiter = "+NonText",
                    },
                },
            
                Insertion = {
                    [""] = "cterm=bold gui=bold",
                    Prefix = "+TSPunctDelimiter",
                    Variable = {
                        [""] = "+TSString",
                        Value = "+TSPunctDelimiter",
                    },
                    Item = "+TSNamespace",
                    Parameters = "+TSComment",
                },
            
                Link = {
                    Text = {
                        [""] = "+TSURI",
                        Delimiter = "+NonText",
                    },
            
                    File = {
                        [""] = "+TSComment",
                        Delimiter = "+NonText",
                    },
            
                    Location = {
                        Delimiter = "+NonText",
            
                        URL = "+TSURI",
            
                        Generic = {
                            [""] = "+TSType",
                            Prefix = "+TSType",
                        },
            
                        ExternalFile = {
                            [""] = "+TSLabel",
                            Prefix = "+TSLabel",
                        },
            
                        Marker = {
                            [""] = "+NeorgMarkerTitle",
                            Prefix = "+NeorgMarker",
                        },
            
                        Definition = {
                            [""] = "+NeorgDefinitionTitle",
                            Prefix = "+NeorgDefinition",
                        },
            
                        Footnote = {
                            [""] = "+NeorgFootnoteTitle",
                            Prefix = "+NeorgFootnote",
                        },
            
                        Heading = {
                            ["1"] = {
                                [""] = "+NeorgHeading1Title",
                                Prefix = "+NeorgHeading1Prefix",
                            },
            
                            ["2"] = {
                                [""] = "+NeorgHeading2Title",
                                Prefix = "+NeorgHeading2Prefix",
                            },
            
                            ["3"] = {
                                [""] = "+NeorgHeading3Title",
                                Prefix = "+NeorgHeading3Prefix",
                            },
            
                            ["4"] = {
                                [""] = "+NeorgHeading4Title",
                                Prefix = "+NeorgHeading4Prefix",
                            },
            
                            ["5"] = {
                                [""] = "+NeorgHeading5Title",
                                Prefix = "+NeorgHeading5Prefix",
                            },
            
                            ["6"] = {
                                [""] = "+NeorgHeading6Title",
                                Prefix = "+NeorgHeading6Prefix",
                            },
                        },
                    },
                },
            
                Markup = {
                    Bold = {
                        [""] = "+TSStrong",
                        Delimiter = "+NonText",
                    },
                    Italic = {
                        [""] = "+TSEmphasis",
                        Delimiter = "+NonText",
                    },
                    Underline = {
                        [""] = "+TSUnderline",
                        Delimiter = "+NonText",
                    },
                    Strikethrough = {
                        [""] = "+TSStrike",
                        Delimiter = "+NonText",
                    },
                    Spoiler = {
                        [""] = "+TSDanger",
                        Delimiter = "+NonText",
                    },
                    Subscript = {
                        [""] = "+TSLabel",
                        Delimiter = "+NonText",
                    },
                    Superscript = {
                        [""] = "+TSNumber",
                        Delimiter = "+NonText",
                    },
                    Math = {
                        [""] = "+TSMath",
                        Delimiter = "+NonText",
                    },
                    Variable = {
                        [""] = "+NeorgInsertionVariable",
                        Delimiter = "+NonText",
                    },
                    Verbatim = {
                        Delimiter = "+NonText",
                    },
                    InlineComment = {
                        Delimiter = "+NonText",
                    },
                },
            
                StrongParagraphDelimiter = "+TSPunctDelimiter",
                WeakParagraphDelimiter = "+TSPunctDelimiter",
                HorizontalLine = "+TSPunctDelimiter",
            
                TrailingModifier = "+NonText",
                LinkModifier = "+NonText",
            
                DocumentMeta = {
                    Key = "+TSField",
                    Value = "+TSString",
                    Carryover = "+TSRepeat",
                    Title = "+TSTitle",
                    Description = "+TSLabel",
                    Authors = "+TSAnnotation",
                    Categories = "+TSKeyword",
                    Created = "+TSFloat",
                    Version = "+TSFloat",
            
                    Object = {
                        Bracket = "+TSPunctBracket",
                    },
            
                    Array = {
                        Bracket = "+TSPunctBracket",
                        Value = "+Normal",
                    },
                },
            }
        }
    }
}
