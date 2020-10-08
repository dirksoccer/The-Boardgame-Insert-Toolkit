
include <boardgame_insert_toolkit_lib.2.scad>;
use <OrthodoxHerbertarian.ttf>;

// determines whether lids are output.
g_b_print_lid = true;

// determines whether boxes are output.
g_b_print_box = true;

// Focus on one box
g_isolated_print_box = "";

// Used to visualize how all of the boxes fit together.
// Turn off for printing.
g_b_visualization = false;

// this is the outer wall thickness.
//Default = 1.5
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

// 285 x 285 x 50
data =
[
  [ "cards",
    [
      [ BOX_SIZE_XYZ, [206, 94, 30] ],
      [ BOX_LID,
        [
          [ LID_PATTERN_RADIUS,         10],
          [ LID_PATTERN_N1,               6 ],
          [ LID_PATTERN_N2,               3 ],
          [ LID_PATTERN_ANGLE,            60 ],
          [ LID_PATTERN_ROW_OFFSET,       10 ],
          [ LID_PATTERN_COL_OFFSET,       140 ],
          [ LID_PATTERN_THICKNESS,        0.6 ],
          [ LID_LABELS_BORDER_THICKNESS, 0.9 ]
        ]
      ],
      [ BOX_COMPONENT,
        [
          [CMP_COMPARTMENT_SIZE_XYZ,  [ 67, 91, 28] ],
          [CMP_NUM_COMPARTMENTS_XY,   [3, 1] ],
          [ CMP_CUTOUT_SIDES_4B, [t,t,f,f] ]
        ]
      ]
    ]
  ],
  [ "cards",
    [
      [ BOX_SIZE_XYZ, [206, 94, 16] ],
      [ BOX_LID,
        [
          [ LID_PATTERN_RADIUS,         10],
          [ LID_PATTERN_N1,               6 ],
          [ LID_PATTERN_N2,               3 ],
          [ LID_PATTERN_ANGLE,            60 ],
          [ LID_PATTERN_ROW_OFFSET,       10 ],
          [ LID_PATTERN_COL_OFFSET,       140 ],
          [ LID_PATTERN_THICKNESS,        0.6 ],
          [ LID_LABELS_BORDER_THICKNESS, 0.9 ]
        ]
      ],
      [ BOX_COMPONENT,
        [
          [CMP_COMPARTMENT_SIZE_XYZ, [ 67, 91, 14] ],
          [CMP_NUM_COMPARTMENTS_XY,  [3, 1] ],
          [ CMP_CUTOUT_SIDES_4B, [t,t,f,f] ]
        ]
      ]
    ]
  ],
  [ "minis",
    [
      [ BOX_SIZE_XYZ, [194, 182, 46] ],
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
              [ LBL_TEXT, "Stuffed Fables" ],
              [ LBL_SIZE, 15 ]
            ]
          ]
        ]
      ],
      [ BOX_COMPONENT,
        [ // Mongrel
          [CMP_COMPARTMENT_SIZE_XYZ, [ 46, 38, 40] ],
          [CMP_NUM_COMPARTMENTS_XY, [2, 2] ],
          [ROTATION, 0 ],
          [POSITION_XY, [34, "max"] ],
          [LABEL,
            [
              [ LBL_TEXT,   "MONGREL" ],
              [ LBL_FONT, "OrthodoxHerbertarian:style=Regular"],
              [ LBL_SIZE,   4 ]
            ]
          ],
        ],
      ],
      [ BOX_COMPONENT,
        [ // Dark Heart
          [CMP_COMPARTMENT_SIZE_XYZ, [ 31, 38, 36] ],
          [CMP_NUM_COMPARTMENTS_XY, [2, 2] ],
          [POSITION_XY, ["max", "max" ] ],
          [ROTATION, 0 ],
          [LABEL,
            [
              [ LBL_TEXT, "DARK HEART" ],
              [ LBL_SIZE, 3 ],
              [ ROTATION, 0 ],
            ]
          ]
        ],
      ],
      [ BOX_COMPONENT,
        [ // Crepitus
          [CMP_COMPARTMENT_SIZE_XYZ, [ 28, 67, 43] ],
          [CMP_NUM_COMPARTMENTS_XY, [1,1] ],
          [POSITION_XY, [34, 34 ] ],
          [ROTATION, 0 ],
          [LABEL,
            [
              [ LBL_TEXT, "CREPITUS"],
              [ LBL_SIZE, 4 ]
            ]
          ],
        ],
      ],
      [ BOX_COMPONENT,
        [ //  Snatcher
          [ CMP_COMPARTMENT_SIZE_XYZ, [ 80, 67, 43] ],
          [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
          [ POSITION_XY, [63, 34 ] ],
          [ ROTATION, 0 ],
          [ LABEL,
            [
              [ LBL_TEXT, "SNATCHER"],
              [ LBL_SIZE, 4 ]
            ]
          ],
        ],
      ],
      [ BOX_COMPONENT,
        [  // Skreela
          [ CMP_COMPARTMENT_SIZE_XYZ, [52, 33, 30] ],
          [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
          [ POSITION_XY, ["max", 0 ] ],
          [ ROTATION, 0 ],
          [ LABEL,
            [
              [ LBL_TEXT,  "SKREELA"],
              [ LBL_SIZE,  4 ],
              [ ROTATION,  0]
            ]
          ],
        ],
      ],
      [ BOX_COMPONENT,
        [ // Knuckle
          [ CMP_COMPARTMENT_SIZE_XYZ, [ 57, 33, 38] ],
          [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
          [ POSITION_XY, [81, 0 ] ],
          [ ROTATION, 0 ],
          [ LABEL,
            [
              [ LBL_TEXT, "KNUCKLE"],
              [ LBL_SIZE, 4 ],
              [ ROTATION, 0]
            ]
          ],
        ],
      ],
      [ BOX_COMPONENT,
        [   // Dollmaker
          [ CMP_COMPARTMENT_SIZE_XYZ, [ 46, 33, 30] ],
          [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
          [ POSITION_XY, [34, 0] ],
          [ ROTATION, 0 ],
          [ LABEL,
            [
              [ LBL_TEXT, "DOLLMAKER" ],
              [ LBL_SIZE, 4 ],
              [ ROTATION, 0 ]
            ]
          ],
        ],
      ],
      [ BOX_COMPONENT,
        [   // Crawly
          [CMP_COMPARTMENT_SIZE_XYZ, [ 22, 33, 38] ],
          [CMP_NUM_COMPARTMENTS_XY, [2, 2] ],
          [POSITION_XY, ["max", 34] ],
          [ROTATION, 0 ],
          [LABEL,
            [
              [ LBL_TEXT, "CRAWLY" ],
              [ LBL_SIZE, 3 ],
              [ ROTATION, 0 ]
            ]
          ],
        ],
      ],
      [ BOX_COMPONENT,
        [  // Heros
          [ CMP_COMPARTMENT_SIZE_XYZ, [ 33, 29, 35] ],
          [CMP_NUM_COMPARTMENTS_XY, [1, 6] ],
          [ POSITION_XY, [0, 0] ],
          [ROTATION, 0 ],
          [LABEL,
            [
              [ LBL_TEXT, "HERO" ],
              [ LBL_SIZE, 4 ],
              [ ROTATION, 0 ]
            ]
          ],
        ]
      ]
    ]
  ],
  [ "chits",
    [
      [ BOX_SIZE_XYZ, [85, 185, 46] ],
      [ BOX_LID,
        [
          [ LID_PATTERN_RADIUS,         10],
          [ LID_PATTERN_N1,               6 ],
          [ LID_PATTERN_N2,               3 ],
          [ LID_PATTERN_ANGLE,            60 ],
          [ LID_PATTERN_ROW_OFFSET,       10 ],
          [ LID_PATTERN_COL_OFFSET,       140 ],
          [ LID_PATTERN_THICKNESS,        0.6 ],
          [ LID_LABELS_BORDER_THICKNESS, 0.9 ]
        ]
      ],
      [ BOX_COMPONENT,
        [ // Cards
          [ CMP_COMPARTMENT_SIZE_XYZ, [71, 46, 25] ],
          [ POSITION_XY, ["center", "max"] ],
          [ CMP_CUTOUT_SIDES_4B, [f,f,t,t] ],
          [ ROTATION, 0 ],
        ]
      ],
      [ BOX_COMPONENT,
        [   // Dice
          [CMP_COMPARTMENT_SIZE_XYZ, [ 82, 26, 42] ],
          [CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
          [ CMP_SHAPE, ROUND ],
          [POSITION_XY, ["center", 0 ] ],
          [ROTATION, 0 ],
        ]
      ],
      [ BOX_COMPONENT,
        [   // Tokens
          [ CMP_COMPARTMENT_SIZE_XYZ, [26, 37, 25] ],
          [ CMP_NUM_COMPARTMENTS_XY, [3, 1] ],
          [ CMP_SHAPE, ROUND ],
          [ CMP_SHAPE_ROTATED_B, true],
          [ POSITION_XY, ["center", 27] ],
          [ ROTATION, 0 ],
        ]
      ],
      [ BOX_COMPONENT,
        [  // Tokens
          [ CMP_COMPARTMENT_SIZE_XYZ, [ 26, 70, 40] ],
          [ CMP_NUM_COMPARTMENTS_XY, [3, 1] ],
          [ CMP_SHAPE, ROUND ],
          [ POSITION_XY, ["center", 65] ],
          [ ROTATION, 0 ],
        ]
      ]
    ]
  ]
];


MakeAll();
