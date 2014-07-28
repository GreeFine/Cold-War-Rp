if (Radio) Then {
	while {true} do {
		1 radioChannelAdd [player];
		2 radioChannelAdd [player];
		waitUntil {!alive player};
		1 radioChannelAdd [player];
		2 radioChannelAdd [player];
	};
};