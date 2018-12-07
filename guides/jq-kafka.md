Quite nice and useful when monitoring a kafka queue with JSON on it. Similar can be applied generally to JSON files.
```
kafkacat -b kafka1.footballradar.net -t scoreline-probabilities | jq "{gameId, firstSelection: .scorelineProbabilitiesBySelections | sort_by(.selections) | .[0].selections[0], lowestScorelineP: .scorelineProbabilitiesBySelections | sort_by(.selections) | .[0].probabilities | sort_by(.s) | .[0]}"
```
