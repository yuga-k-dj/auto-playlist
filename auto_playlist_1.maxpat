{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 3,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ -1519.0, 144.0, 1318.0, 694.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 2,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 2,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"showontab" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-46",
					"maxclass" : "number",
					"minimum" : 3,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 753.833312332630157, 180.0, 72.0, 35.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 330.0, 351.0, 72.0, 35.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-34",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 718.833312332630157, 240.0, 107.0, 87.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 165.0, 345.0, 165.0, 47.0 ],
					"text" : "How many tracks?\n(Drag the slider)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-32",
					"linecount" : 7,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 240.0, 750.0, 163.0, 116.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 197.0, 41.0, 915.0, 22.0 ],
					"text" : "Push \"On\" button at Section 1. → Drop both start/goal track and choose \"How many tracks\" at Section 2. → Push \"Load Button\" at Section 3."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 316.666688406455933, 81.008549094200134, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 225.0, 165.0, 37.5, 37.5 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 237.666688406455933, 81.008549094200134, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 225.0, 115.75, 37.5, 37.5 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 16.0,
					"id" : "obj-27",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 45.166688406455933, 750.0, 184.0, 42.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 675.0, 197.89773847356264, 210.0, 24.0 ],
					"text" : "* Please wait about 10sec."
				}

			}
, 			{
				"box" : 				{
					"border" : 3.0,
					"id" : "obj-26",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 495.0, 330.0, 226.833327496040283, 14.333333313465118 ],
					"presentation" : 1,
					"presentation_rect" : [ 90.0, 510.0, 342.740041923777881, 18.10226152643736 ]
				}

			}
, 			{
				"box" : 				{
					"border" : 3.0,
					"id" : "obj-25",
					"justification" : 1,
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 66.166684770572601, 397.5, 226.833327496040283, 14.333333313465118 ],
					"presentation" : 1,
					"presentation_rect" : [ 90.0, 215.39773847356264, 342.740041923777881, 18.10226152643736 ]
				}

			}
, 			{
				"box" : 				{
					"border" : 3.0,
					"id" : "obj-24",
					"justification" : 1,
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 374.500002610660431, 397.5, 12.333324885379852, 261.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 450.0, 105.0, 15.0, 510.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontsize" : 30.0,
					"id" : "obj-23",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 341.833327496040283, 136.0, 45.0, 40.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 90.0, 557.5, 45.0, 40.0 ],
					"text" : "3."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontsize" : 30.0,
					"id" : "obj-22",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 540.0, 112.0, 45.0, 40.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 90.0, 345.0, 45.0, 40.0 ],
					"text" : "2."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontsize" : 30.0,
					"id" : "obj-16",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 135.0, 81.008549094200134, 45.0, 40.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 90.0, 135.0, 45.0, 40.0 ],
					"text" : "1."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-14",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 77.0, 210.0, 119.666688406455933, 47.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 273.499999821186066, 123.25, 130.0, 27.0 ],
					"text" : "System Status:"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 742.833312332630157, 81.008549094200134, 75.0, 20.0 ],
					"text" : "track num"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 611.666663527488708, 81.008549094200134, 105.0, 20.0 ],
					"text" : "goal track (.wav)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 455.666663968551575, 83.008549094200134, 105.0, 20.0 ],
					"text" : "start track (.wav)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"linecount" : 17,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 66.166684770572601, 510.0, 292.000007271766663, 236.0 ],
					"text" : "\"1. The Middle (Chachi & Dstar Remix) Radio /No. 404.wav\";\r\"2. Here With Me (Intro) /No. 12.wav\";\r\"3. Promises - Joe Maz Milky Way Bootleg /No. 787.wav\";\r\"4. Dreamer /No. 2390.wav\";\r\"5. I Hear You Calling /No. 1692.wav\";\r\"6. The Next Episode - San Holo Remix (Clean) /No. 606.wav\";\r\"7. Black Or White (John Marr Hello Edit) /No. 1117.wav\";\r\"8. 01 Find You (feat. Matthew Koma & Miriam Bryant) [Kevin Drew Remix] /No. 3204.wav\";\r\"9. Dear Boy - DJ Scene Melbourne Bounce Bootleg /No. 2703.wav\";\r\"10. 01 Drive (feat. Delilah Montagu) [Original Mix] /No. 2.wav\""
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 24.0,
					"id" : "obj-8",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 66.166684770572601, 435.0, 199.666656017303467, 60.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 510.0, 161.89773847356264, 150.0, 60.0 ],
					"text" : "Here's my \nsuggestion:"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "dropfile",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 600.0, 79.008549094200134, 128.333327054977417, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 165.0, 407.625000029802322, 238.499999821186066, 87.374999970197678 ]
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-3",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "n4m.monitor.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 430.5, 435.0, 400.0, 220.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-17",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 341.833327496040283, 81.008549094200134, 66.0, 47.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 165.0, 564.0, 135.0, 27.0 ],
					"text" : "Load Button"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 3,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ -1347.0, 351.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-199",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 137.0, 72.0, 22.0 ],
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-195",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 116.551285088062286, 100.0, 29.5, 22.0 ],
									"text" : "Idle"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-194",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 100.0, 53.0, 22.0 ],
									"text" : "Running"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-200",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-201",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 116.551269999999931, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-202",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 219.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-199", 0 ],
									"source" : [ "obj-194", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-199", 0 ],
									"source" : [ "obj-195", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-202", 0 ],
									"source" : [ "obj-199", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-194", 0 ],
									"source" : [ "obj-200", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-195", 0 ],
									"source" : [ "obj-201", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 77.666688406455933, 166.008549094200134, 83.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p RunningInfo"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 30.0,
					"id" : "obj-19",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 77.666688406455933, 240.0, 130.0, 40.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 273.499999821186066, 160.25, 130.0, 40.0 ],
					"text" : "Running"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 24.0,
					"id" : "obj-20",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 270.0, 75.0, 61.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 165.0, 167.25, 52.0, 33.0 ],
					"text" : "Off"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 24.0,
					"id" : "obj-21",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 195.0, 75.0, 45.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 165.0, 118.0, 52.0, 33.0 ],
					"text" : "On"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 600.0, 165.0, 151.333335757255554, 49.0 ],
					"text" : "/Users/yugakoba/Keio_Univ_SFC/4thGrade/auto-playlist/track_in_number/2.wav"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 600.0, 112.0, 61.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "splite.js",
						"parameter_enable" : 0
					}
,
					"text" : "js splite.js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 435.0, 330.0, 29.5, 22.0 ],
					"text" : "　"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 444.000000441062866, 112.0, 61.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "splite.js",
						"parameter_enable" : 0
					}
,
					"text" : "js splite.js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "dropfile",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 444.000000441062866, 81.008549094200134, 128.333327054977417, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 165.0, 240.79547694712528, 238.499999821186066, 89.20452305287472 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 24.0,
					"id" : "obj-41",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 30.0, 265.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 30.0, 35.5, 165.0, 33.0 ],
					"text" : "Auto-Playlist"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-37",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 495.0, 525.0, 249.0, 60.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 180.759957897408185, 254.0, 207.0, 60.0 ],
					"text" : "Start track here\n(Drop \".wav\" file)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 390.833327496040283, 81.008549094200134, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 315.0, 540.0, 75.0, 75.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 764.833312332630157, 180.0, 50.0, 22.0 ],
					"text" : "10"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-45",
					"linecount" : 4,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 444.000000441062866, 165.0, 156.0, 62.0 ],
					"text" : "/Users/yugakoba/Keio_Univ_SFC/4thGrade/auto-playlist/track_in_number/404.wav"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 444.000000441062866, 270.0, 82.0, 22.0 ],
					"text" : "prepend input"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 444.000000441062866, 244.0, 59.0, 22.0 ],
					"text" : "pack s s i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 277.666688406455933, 112.0, 63.0, 22.0 ],
					"text" : "script stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 197.666688406455933, 112.0, 64.0, 22.0 ],
					"text" : "script start"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontsize" : 20.0,
					"id" : "obj-56",
					"linecount" : 11,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 525.0, 750.0, 626.0, 254.0 ],
					"presentation" : 1,
					"presentation_linecount" : 12,
					"presentation_rect" : [ 510.0, 240.0, 570.0, 277.0 ],
					"text" : "\"1. The Middle (Chachi & Dstar Remix) Radio /No. 404.wav\";\r\"2. Here With Me (Intro) /No. 12.wav\";\r\"3. Promises - Joe Maz Milky Way Bootleg /No. 787.wav\";\r\"4. Dreamer /No. 2390.wav\";\r\"5. I Hear You Calling /No. 1692.wav\";\r\"6. The Next Episode - San Holo Remix (Clean) /No. 606.wav\";\r\"7. Black Or White (John Marr Hello Edit) /No. 1117.wav\";\r\"8. 01 Find You (feat. Matthew Koma & Miriam Bryant) [Kevin Drew Remix] /No. 3204.wav\";\r\"9. Dear Boy - DJ Scene Melbourne Bounce Bootleg /No. 2703.wav\";\r\"10. 01 Drive (feat. Delilah Montagu) [Original Mix] /No. 2.wav\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 77.666688406455933, 321.0, 119.0, 22.0 ],
					"saved_object_attributes" : 					{
						"autostart" : 0,
						"defer" : 0,
						"watch" : 0
					}
,
					"text" : "node.script python.js"
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.19 ],
					"border" : 4,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"drag_window" : 1,
					"id" : "obj-65",
					"ignoreclick" : 0,
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 65.0, 810.0, 642.84615401273345 ],
					"presentation" : 1,
					"presentation_rect" : [ 30.0, 75.0, 1095.0, 570.0 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-33",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 495.0, 570.0, 247.0, 60.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 180.759957897408185, 420.0, 206.0, 60.0 ],
					"text" : "Goal track here\n(Drop \".wav\" file)"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 1 ],
					"midpoints" : [ 609.5, 233.004274666309357, 473.500000441062866, 233.004274666309357 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 1 ],
					"midpoints" : [ 609.5, 143.055556297302246, 741.833335757255554, 143.055556297302246 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
					"midpoints" : [ 444.5, 367.83333146572113, 348.666692042339264, 367.83333146572113 ],
					"order" : 1,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 1 ],
					"midpoints" : [ 444.5, 351.0, 1141.5, 351.0 ],
					"order" : 0,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 1 ],
					"midpoints" : [ 453.500000441062866, 159.055556774139404, 590.500000441062866, 159.055556774139404 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"midpoints" : [ 400.333327496040283, 158.722223401069641, 609.5, 158.722223401069641 ],
					"order" : 1,
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"midpoints" : [ 400.333327496040283, 308.393164455890656, 444.5, 308.393164455890656 ],
					"order" : 3,
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"midpoints" : [ 400.333327496040283, 159.055556774139404, 774.333312332630157, 159.055556774139404 ],
					"order" : 0,
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"midpoints" : [ 400.333327496040283, 159.055556774139404, 453.500000441062866, 159.055556774139404 ],
					"order" : 2,
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 2 ],
					"midpoints" : [ 774.333312332630157, 232.837608397006989, 493.500000441062866, 232.837608397006989 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 1 ],
					"midpoints" : [ 763.333312332630157, 208.388891577720642, 805.333312332630157, 208.388891577720642 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"midpoints" : [ 453.500000441062866, 306.0, 87.166688406455933, 306.0 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 1 ],
					"midpoints" : [ 287.166688406455933, 145.008549094200134, 151.166688406455933, 145.008549094200134 ],
					"order" : 0,
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"midpoints" : [ 287.166688406455933, 307.166666507720947, 87.166688406455933, 307.166666507720947 ],
					"order" : 1,
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"midpoints" : [ 207.166688406455933, 145.008549094200134, 87.166688406455933, 145.008549094200134 ],
					"order" : 0,
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"midpoints" : [ 207.166688406455933, 304.500001192092896, 87.166688406455933, 304.500001192092896 ],
					"order" : 1,
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
					"midpoints" : [ 87.166688406455933, 388.666665554046631, 348.666692042339264, 388.666665554046631 ],
					"order" : 1,
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"midpoints" : [ 187.166688406455933, 366.504275023937225, 440.0, 366.504275023937225 ],
					"source" : [ "obj-57", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 1 ],
					"midpoints" : [ 87.166688406455933, 387.000001072883606, 1141.5, 387.000001072883606 ],
					"order" : 0,
					"source" : [ "obj-57", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "python.js",
				"bootpath" : "~/Keio_Univ_SFC/4thGrade/auto-playlist",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "splite.js",
				"bootpath" : "~/Keio_Univ_SFC/4thGrade/auto-playlist",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "n4m.monitor.maxpat",
				"bootpath" : "C74:/packages/Node For Max/patchers/debug-monitor",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "resize_n4m_monitor_patcher.js",
				"bootpath" : "C74:/packages/Node For Max/patchers/debug-monitor",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "fit_jweb_to_bounds.js",
				"bootpath" : "C74:/packages/Node For Max/patchers/debug-monitor",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
