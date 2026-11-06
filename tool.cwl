cwlVersion: v1.2

$namespaces:
  s: https://schema.org/
  edam: http://edamontology.org/

$graph:
  - class: CommandLineTool
    id: word_sorter
    inputs:
      text:
        type: string
        doc: String to split into words and sort alphabetically.
        inputBinding:
          position: 1
      output_file:
        type: string
        default: sorted_words.txt
        doc: Name of the text file to write the sorted words to.
        inputBinding:
          position: 2
    outputs:
      sorted_words_file:
        label: Sorted words text file
        doc: Words from the input string sorted alphabetically, separated by spaces.
        type: File
        format: edam:format_2330
        outputBinding:
          glob: $(inputs.output_file)
    requirements:
      InlineJavascriptRequirement: {}
      DockerRequirement:
        dockerPull: iliad-repository.inesctec.pt/word-sorter:latest
    s:name: word_sorter
    s:description: Sorts the words in a string without regard to case and writes them to a text file.
    s:keywords:
      - word sorting
      - text processing
      - Python
    s:programmingLanguage: Python
    s:softwareVersion: "0.1.0"
    s:producer:
      class: s:Organization
      s:name: INESCTEC
      s:url: https://inesctec.pt
      s:address:
        class: s:PostalAddress
        s:addressCountry: PT
    s:sourceOrganization:
      - class: s:Organization
        s:name: INESCTEC
        s:url: https://inesctec.pt
        s:address:
          class: s:PostalAddress
          s:addressCountry: PT
    s:author:
      - class: s:Person
        s:name: João Campos
        s:email: joao.campos@inesctec.pt
    s:codeRepository: https://github.com/pastilhas/example-workflow/tree/main
    s:dateCreated: "2026-10-30T18:00:00Z"
