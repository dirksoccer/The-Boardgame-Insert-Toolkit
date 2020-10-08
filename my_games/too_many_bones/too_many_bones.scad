include <boardgame_insert_toolkit_lib.2.scad>;
use <PirataOne-Regular.ttf>;

// determines whether lids are output.
g_b_print_lid = true;

// determines whether boxes are output.
g_b_print_box = true;

// Focus on one box
g_isolated_print_box = "";

// Used to visualize how all of the boxes fit together.
g_b_visualization = false;

// this is the outer wall thickness.
//Default = 1.5mm
g_wall_thickness = 1.5;

// The tolerance value is extra space put between planes of the lid and box that fit together.
// Increase the tolerance to loosen the fit and decrease it to tighten it.
//
// Note that the tolerance is applied exclusively to the lid.
// So if the lid is too tight or too loose, change this value ( up for looser fit, down for tighter fit ) and
// you only need to reprint the lid.
//
// The exception is the stackable box, where the bottom of the box is the lid of the box below,
// in which case the tolerance also affects that box bottom.
//
g_tolerance = 0.15;

// This adjusts the position of the lid detents downward.
// The larger the value, the bigger the gap between the lid and the box.
g_tolerance_detents_pos = 0.1;

// Total TMB Box Dimensions 360 x 360 x 85
// Character Box Dimensions 81.5 x 179.5 x 20.5
// Neoprene Mat Dimensions 254 x 229 x 3
data =
[
    [   "neoprene mat box",
        [
            [ BOX_SIZE_XYZ, [275, 256, 42] ],
            [ BOX_LID,
                [
                  [ LID_PATTERN_RADIUS,         10],
                  [ LID_PATTERN_N1,               6 ],
                  [ LID_PATTERN_N2,               3 ],
                  [ LID_PATTERN_ANGLE,            60 ],
                  [ LID_PATTERN_ROW_OFFSET,       10 ],
                  [ LID_PATTERN_COL_OFFSET,       140 ],
                  [ LID_PATTERN_THICKNESS,        0.6 ],
                  [ LID_LABELS_BORDER_THICKNESS, 0.9 ],
                  [ LABEL,
                      [
                          [ LBL_TEXT, "Too Many"],
                          [ LBL_SIZE, 30 ],
                          [LBL_FONT, "Pirata One:style=Regular"],
                          [ POSITION_XY, [0, 30]]
                      ]
                  ],
                  [ LABEL,
                      [
                          [ LBL_TEXT, "Bones"],
                          [ LBL_SIZE, 30 ],
                          [LBL_FONT, "Pirata One:style=Regular"],
                          [POSITION_XY, [0, -30]]
                      ]
                  ]
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [CMP_COMPARTMENT_SIZE_XYZ, [ 269, 250, 40] ],
                ]
            ],
        ]
    ],

    // Deck Dimensions 69 x 93.5 x 26.5
    [   "2 deck card tray - finger cutout",
        [
            [ BOX_SIZE_XYZ, [150, 101, 32.0] ],
            [ BOX_LID,
                [
                  [ LID_PATTERN_RADIUS,         10],
                  [ LID_PATTERN_N1,               6 ],
                  [ LID_PATTERN_N2,               3 ],
                  [ LID_PATTERN_ANGLE,            60 ],
                  [ LID_PATTERN_ROW_OFFSET,       10 ],
                  [ LID_PATTERN_COL_OFFSET,       140 ],
                  [ LID_PATTERN_THICKNESS,        0.6 ],
                  [ LID_LABELS_BORDER_THICKNESS, 0.9 ],
                    [ LABEL,
                        [
                            [ LBL_TEXT, "Decks"],
                            [LBL_FONT, "Pirata One:style=Regular"],
                            [ LBL_SIZE, 20 ],
                        ]
                    ],
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [ CMP_NUM_COMPARTMENTS_XY, [2, 1] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ, [ 70, 94, 30.0] ],
                    [ CMP_CUTOUT_SIDES_4B, [t,t,f,f]], // all sides
                ]
            ],
        ]
    ],

    // Badde Chip - 40 diameter, 3.25 thick
    [   "Baddies Tray",
        [
            [ BOX_SIZE_XYZ, [137, 101, 42] ],
            [ BOX_LID,
                [
                  [ LID_PATTERN_RADIUS,         10],
                  [ LID_PATTERN_N1,               6 ],
                  [ LID_PATTERN_N2,               3 ],
                  [ LID_PATTERN_ANGLE,            60 ],
                  [ LID_PATTERN_ROW_OFFSET,       10 ],
                  [ LID_PATTERN_COL_OFFSET,       140 ],
                  [ LID_PATTERN_THICKNESS,        0.6 ],
                  [ LID_LABELS_BORDER_THICKNESS, 0.9 ],
                    [ LABEL,
                        [
                            [ LBL_TEXT, "Baddies"],
                            [LBL_FONT, "Pirata One:style=Regular"],
                            [ LBL_SIZE, 20 ],
                        ]
                    ],
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY, [3, 1] ],
                    [CMP_SHAPE, ROUND],
                    [CMP_SHAPE_VERTICAL_B, false],
                    [CMP_COMPARTMENT_SIZE_XYZ, [ 40, 94, 40] ],
                    [CMP_CUTOUT_SIDES_4B, [t,t,f,f]], // all sides2
                ]
            ],
        ]
    ],

    [   "Health Tray",
        [
            [ BOX_SIZE_XYZ, [137, 101, 42] ],
            [ BOX_LID,
                [
                  [ LID_PATTERN_RADIUS,         10],
                  [ LID_PATTERN_N1,               6 ],
                  [ LID_PATTERN_N2,               3 ],
                  [ LID_PATTERN_ANGLE,            60 ],
                  [ LID_PATTERN_ROW_OFFSET,       10 ],
                  [ LID_PATTERN_COL_OFFSET,       140 ],
                  [ LID_PATTERN_THICKNESS,        0.6 ],
                  [ LID_LABELS_BORDER_THICKNESS, 0.9 ],
                    [ LABEL,
                        [
                            [ LBL_TEXT, "Health"],
                            [LBL_FONT, "Pirata One:style=Regular"],
                            [ LBL_SIZE, 20 ],
                        ]
                    ],
                ]
            ],
            [ BOX_COMPONENT,
                [
                    [CMP_NUM_COMPARTMENTS_XY, [3, 1] ],
                    [CMP_SHAPE, ROUND],
                    [CMP_SHAPE_VERTICAL_B, false],
                    [CMP_COMPARTMENT_SIZE_XYZ, [ 40, 94, 40] ],
                    [CMP_CUTOUT_SIDES_4B, [t,t,f,f]], // all sides2
                ]
            ],
        ]
    ],

];


MakeAll();
