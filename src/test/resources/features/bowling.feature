Feature: Scores bowling games

  Scenario: Erratic bowler
    Given a bowling game
    When bowler rolls:
      | 2 |
      | 5 |
      | 4 |
      | 3 |
      | 2 |
      | 7 |
      | 4 |
      | 3 |
      | 3 |
      | 5 |
      | 7 |
      | 2 |
      | 2 |
      | 4 |
      | 8 |
      | 0 |
      | 3 |
      | 3 |
      | 5 |
      | 4 |
    Then the score is 76

  Scenario: Score a spare
    Given a bowling game
    When bowler rolls:
      | 2 |
      | 5 |
      | 4 |
      | 6 |
      | 2 |
      | 7 |
      | 4 |
      | 3 |
      | 3 |
      | 5 |
      | 7 |
      | 2 |
      | 2 |
      | 4 |
      | 8 |
      | 0 |
      | 3 |
      | 3 |
      | 5 |
      | 4 |
    Then the score is 81

  Scenario: Score a strike
    Given a bowling game
    When bowler rolls:
      | 2  |
      | 5  |
      | 10 |
      | 2  |
      | 7  |
      | 4  |
      | 3  |
      | 3  |
      | 5  |
      | 7  |
      | 2  |
      | 2  |
      | 4  |
      | 8  |
      | 0  |
      | 3  |
      | 3  |
      | 5  |
      | 4  |
    Then the score is 88

  Scenario: Score a spare in the 10th
    Given a bowling game
    When bowler rolls:
      | 2 |
      | 5 |
      | 4 |
      | 3 |
      | 2 |
      | 7 |
      | 4 |
      | 3 |
      | 3 |
      | 5 |
      | 7 |
      | 2 |
      | 2 |
      | 4 |
      | 8 |
      | 0 |
      | 3 |
      | 3 |
      | 5 |
      | 5 |
      | 4 |
    Then the score is 81

  Scenario: Perfect game
    Given a bowling game
    When bowler rolls:
      | 10 |
      | 10 |
      | 10 |
      | 10 |
      | 10 |
      | 10 |
      | 10 |
      | 10 |
      | 10 |
      | 10 |
      | 10 |
      | 10 |
    Then the score is 300