baselines
baseline: spec

	<baseline>
	spec for: #common do: [ 
		spec blessing: #baseline.
		spec description: 'Change to baseline to see if it loads and orks in pharo9'.
		spec author: 'PaulDeBruicker'.
		spec timestamp: '2022-04-02'.
		spec
			baseline: 'Bootstrap4' with: [ 
				spec
					repository: 'github://astares/Seaside-Bootstrap4:master/src';
					loads: #( 'default' ) ];
			baseline: 'Magritte' with: [ 
			spec
				repository: 'github://magritte-metamodel/magritte:master/source';
				loads: #( 'Seaside' ) ].

		spec
			package: 'Bootstrap-Magritte-Core'
			with: [ spec requires: #( 'Bootstrap4' 'Magritte' ) ].
		spec
			package: 'Bootstrap-Magritte-Examples'
			with: [ spec requires: 'Bootstrap-Magritte-Core' ].

		spec
			group: 'default'
			with: #( 'Bootstrap-Magritte-Core' 'Bootstrap-Magritte-Examples' ) ]