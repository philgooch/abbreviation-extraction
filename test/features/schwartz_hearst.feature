Feature: Extraction of abbreviations using Schwartz-Hearst algorithm


  Scenario: I want to extract abbreviations from text
    Given Text that I want to extract abbreviations from:
    """
    The endoplasmic reticulum (ER) in Saccharomyces cerevisiae consists of a
    reticulum underlying the plasma membrane (cortical ER) and ER associated with
    the nuclear envelope (nuclear ER).
    The SH3 domain of Myo5p regulates the
    polymerization of actin through interactions with both Las17p, a homolog of
    mammalian  Wiskott-Aldrich syndrome protein (WASP), and Vrp1p, a homolog of
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


    Given Text that I want to extract abbreviations from:
    """
    Theory of mind (ToM; Smith 2009) broadly refers to humans’ ability to represent the mental states of others,
    including their desires, beliefs, and intentions.
    Applications of text-to-speech (TTS) include:
    We review astronomy and physics engagement with the
    Open Researcher and Contributor iD (ORCID) service as a solution.
    The Proceeds of Crime Act 2002 ("PoCA 2002").
    """
    Then "ToM" should be mapped to "Theory of mind"
    Then "TTS" should be mapped to "text-to-speech"
    Then "ORCID" should be mapped to "Open Researcher and Contributor iD"
    Then "PoCA 2002" should be mapped to "Proceeds of Crime Act 2002"


    Given Text that I want to extract abbreviations from:
    """
    The “satellite” goal of the program was accomplished when China established a space presence with the launch of Dongfanghong I in 1970; although, it wasn’t until the 21st century that the PRC space program kicked into high gear, with the rapid development, buildup and deployment of rockets, satellites, and the first Taikonaut (astronaut) in October 2003. In fact, prior to 2010, the PRC had only conducted ten space launches, one of which put the satellite into orbit.
    Once more, also for the Space Race, a strong transatlantic link could strengthen the path towards a peaceful and prosperous future for humankind and by consequence, a more secure period for our democracies: it is in our hands (and brains) to transform these ideas into a great reality.
    Berlin is acknowledging the vulnerabilities that could potentially arise through hostile acts in space and set up its own space monitoring center, called the Air and Space Operations Center (ASOC) in September 2020 .
    """
    Then "ASOC" should be mapped to "Air and Space Operations Center"
    Then "astronaut" should be null
    Then "and brains" should be null


    Given Text that does not contain a valid abbreviation:
    """
    Bayesian linear regression of actual log(RT)
    """
    Then "RT" should be null