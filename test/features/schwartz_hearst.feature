Feature: Extraction of abbreviations using Schwartz-Hearst algorithm


  Scenario: I want to extract abbreviations from text
    Given Text that I want to extract abbreviations from:
    """
    The endoplasmic reticulum (ER) in Saccharomyces cerevisiae consists of a
    reticulum underlying the plasma membrane (cortical ER) and ER associated with
    the nuclear envelope (nuclear ER).
    The SH3 domain of Myo5p regulates the
    polymerization of actin through interactions with both Las17p, a homolog of
    mammalian Wiskott-Aldrich syndrome protein (WASP), and Vrp1p, a homolog of
    WASP-interacting protein (WIP).
    Ribonuclease P (RNase P) is a ubiquitous endoribonuclease that cleaves precursor
    tRNAs to generate mature 5prime prime or minute termini.
    The purified proteins
    were separated by sodium dodecyl sulfate-polyacrylamide gel electrophoresis (SDS-PAGE) and
    identified by peptide mass fingerprint analysis using
    matrix-assisted laser desorption/ionization (MALDI) mass spectrometry.
    """
    Then "ER" should be mapped to "endoplasmic reticulum"
    Then "WASP" should be mapped to "Wiskott-Aldrich syndrome protein"
    Then "WIP" should be mapped to "WASP-interacting protein"
    Then "RNase P" should be mapped to "Ribonuclease P"
    Then "SDS-PAGE" should be mapped to "sodium dodecyl sulfate-polyacrylamide gel electrophoresis"
    Then "MALDI" should be mapped to "matrix-assisted laser desorption/ionization"
