------------------------------------------------------------------------
-- Script created table file
------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library DSO;
use DSO.Global.all;

package pShortInputValues is
constant cShortInputValues : aInputValues(0 to 6000-1) := ( 20, 23, 5, 24, 18, 6, 11, 18, 28, 29, 10, 30, 30, 20, 28, 13, 20, 32, 30, 34, 28, 14, 34, 36, 31, 33, 33, 26, 33, 22, 35, 20, 26, 21, 23, 41, 38, 30, 45, 24, 34, 34, 43, 44, 31, 38, 38, 43, 45, 47, 36, 46, 46, 35, 35, 44, 56, 42, 48, 40, 53, 42, 48, 53, 58, 61, 51, 42, 43, 46, 60, 47, 61, 48, 65, 52, 48, 50, 59, 57, 54, 66, 61, 60, 70, 55, 67, 67, 59, 64, 53, 53, 64, 71, 75, 56, 67, 65, 55, 63, 60, 75, 64, 70, 62, 72, 65, 75, 76, 78, 71, 63, 67, 83, 66, 82, 76, 87, 66, 75, 67, 88, 66, 84, 86, 87, 69, 77, 74, 88, 79, 91, 74, 76, 74, 74, 92, 85, 85, 76, 93, 88, 82, 86, 84, 77, 81, 78, 80, 82, 86, 78, 99, 100, 89, 90, 87, 100, 88, 82, 98, 89, 86, 90, 83, 84, 104, 104, 96, 84, 88, 91, 103, 84, 85, 88, 100, 102, 100, 96, 98, 93, 104, 91, 103, 91, 96, 102, 106, 89, 110, 106, 100, 99, 99, 96, 101, 101, 109, 108, 105, 99, 109, 103, 99, 113, 111, 104, 106, 105, 96, 99, 103, 97, 112, 97, 98, 96, 98, 103, 100, 114, 103, 97, 114, 116, 104, 96, 99, 103, 108, 100, 108, 110, 99, 97, 101, 101, 104, 106, 96, 100, 113, 95, 116, 111, 106, 108, 100, 105, 117, 107, 106, 100, 106, 109, 110, 103, 103, 117, 95, 115, 115, 113, 96, 100, 102, 110, 97, 110, 96, 109, 105, 111, 110, 114, 114, 101, 109, 97, 93, 110, 104, 103, 113, 106, 106, 112, 110, 105, 95, 97, 112, 91, 102, 94, 113, 107, 102, 101, 91, 105, 90, 91, 101, 91, 107, 107, 105, 91, 103, 99, 110, 102, 105, 97, 96, 105, 87, 88, 89, 94, 104, 103, 85, 93, 96, 93, 98, 97, 89, 92, 82, 105, 85, 83, 89, 85, 91, 88, 102, 101, 80, 96, 84, 88, 90, 99, 86, 99, 83, 92, 91, 87, 91, 90, 78, 76, 96, 77, 73, 85, 92, 87, 75, 79, 81, 93, 73, 89, 83, 77, 72, 77, 78, 69, 80, 71, 74, 78, 70, 70, 78, 69, 82, 85, 79, 69, 74, 63, 81, 80, 78, 64, 72, 58, 67, 64, 60, 60, 65, 57, 68, 65, 69, 69, 67, 52, 53, 58, 62, 65, 59, 68, 65, 70, 59, 54, 48, 60, 63, 54, 46, 50, 46, 49, 52, 54, 51, 61, 52, 61, 54, 61, 43, 53, 43, 52, 52, 36, 40, 39, 49, 52, 40, 50, 47, 30, 44, 38, 50, 28, 38, 37, 37, 44, 33, 43, 35, 24, 27, 39, 33, 25, 29, 34, 24, 36, 24, 39, 23, 35, 20, 22, 17, 28, 30, 26, 22, 27, 26, 27, 25, 32, 14, 25, 13, 10, 21, 17, 16, 20, 22, 12, 19, 12, 22, 21, 7, 14, 13, 12, 19, 4, 5, -1, 18, 10, 6, 9, 6, 8, 5, 9, 3, 14, -5, -8, -9, -10, -3, -2, -5, 4, 0, 3, 6, 6, -13, -14, -2, -17, -7, -7, 0, -10, -12, -6, -5, -11, -16, -21, -11, -20, -25, -9, -22, -18, -12, -21, -12, -21, -15, -15, -21, -32, -25, -24, -28, -30, -16, -26, -15, -28, -19, -29, -19, -21, -31, -35, -22, -19, -34, -26, -32, -24, -26, -40, -25, -22, -34, -26, -33, -44, -43, -39, -31, -30, -31, -43, -38, -49, -49, -49, -37, -42, -49, -43, -51, -54, -36, -43, -35, -41, -44, -39, -38, -36, -60, -40, -46, -38, -49, -51, -43, -57, -51, -42, -51, -45, -48, -52, -60, -50, -65, -52, -52, -51, -47, -46, -51, -56, -48, -57, -70, -68, -51, -60, -52, -68, -60, -58, -73, -60, -66, -74, -64, -71, -73, -71, -73, -72, -76, -63, -71, -66, -62, -67, -67, -69, -77, -69, -60, -60, -75, -76, -68, -67, -72, -78, -61, -81, -81, -80, -80, -70, -71, -84, -63, -68, -68, -84, -66, -64, -63, -66, -68, -75, -83, -78, -85, -87, -66, -81, -82, -81, -78, -74, -89, -70, -77, -70, -82, -80, -89, -86, -75, -83, -70, -88, -68, -79, -75, -68, -85, -82, -81, -74, -73, -90, -88, -84, -92, -81, -85, -89, -88, -72, -77, -82, -72, -91, -76, -76, -81, -90, -80, -87, -91, -89, -73, -92, -88, -93, -84, -94, -73, -90, -92, -87, -83, -92, -71, -86, -87, -93, -87, -93, -82, -76, -79, -92, -92, -76, -72, -81, -91, -74, -86, -87, -76, -93, -92, -77, -79, -81, -76, -76, -74, -86, -76, -79, -83, -91, -74, -84, -77, -74, -89, -88, -78, -80, -70, -72, -73, -89, -88, -88, -71, -67, -73, -86, -72, -86, -86, -73, -80, -73, -70, -74, -70, -82, -70, -64, -66, -84, -77, -77, -69, -71, -66, -76, -80, -82, -66, -79, -74, -70, -77, -67, -71, -78, -63, -79, -74, -75, -68, -78, -70, -77, -77, -60, -72, -64, -55, -67, -61, -59, -66, -61, -73, -54, -71, -69, -56, -63, -56, -64, -67, -72, -56, -62, -61, -57, -69, -63, -52, -53, -66, -66, -66, -68, -57, -52, -50, -54, -63, -50, -62, -61, -62, -60, -59, -58, -55, -54, -56, -55, -39, -43, -47, -55, -54, -56, -36, -41, -44, -49, -52, -41, -32, -50, -48, -44, -51, -36, -42, -28, -42, -36, -46, -40, -45, -31, -27, -39, -31, -39, -33, -26, -31, -36, -37, -33, -33, -34, -29, -24, -31, -30, -37, -38, -32, -30, -22, -14, -14, -25, -30, -17, -16, -16, -16, -30, -16, -20, -26, -28, -10, -25, -25, -12, -6, -15, -10, -22, -3, -12, -8, -23, -4, -5, -19, -9, -13, -7, -10, -9, -14, -12, -17, 5, -1, 7, -11, 8, 5, 1, -2, -6, 6, -5, -9, 9, 7, 9, 7, 3, 3, 13, 2, 14, 14, 17, 9, 13, 21, 9, 1, 20, 15, 10, 25, 8, 18, 18, 13, 8, 6, 16, 11, 24, 16, 28, 26, 23, 14, 33, 17, 34, 18, 22, 16, 29, 19, 16, 33, 25, 33, 27, 33, 19, 41, 39, 38, 40, 31, 37, 36, 36, 30, 30, 36, 31, 45, 50, 28, 41, 31, 48, 53, 32, 53, 32, 48, 51, 46, 54, 55, 49, 38, 41, 41, 38, 40, 52, 61, 47, 49, 63, 63, 57, 65, 60, 51, 59, 50, 51, 61, 58, 56, 61, 65, 61, 61, 62, 61, 51, 67, 74, 59, 74, 60, 73, 64, 63, 59, 57, 62, 72, 74, 73, 57, 77, 79, 76, 60, 68, 76, 77, 66, 67, 77, 73, 77, 68, 67, 83, 82, 86, 67, 70, 68, 78, 71, 88, 70, 69, 81, 87, 76, 74, 78, 75, 83, 92, 86, 74, 81, 74, 85, 84, 97, 93, 86, 96, 78, 85, 98, 98, 93, 91, 85, 100, 81, 95, 94, 99, 89, 97, 100, 88, 93, 104, 94, 89, 96, 90, 100, 92, 94, 99, 106, 91, 104, 102, 107, 85, 93, 101, 92, 91, 103, 101, 100, 102, 88, 95, 98, 93, 105, 108, 95, 106, 92, 109, 92, 103, 98, 109, 102, 101, 111, 99, 101, 113, 92, 114, 96, 107, 105, 107, 100, 106, 111, 93, 94, 115, 108, 98, 102, 96, 99, 99, 101, 97, 101, 96, 114, 96, 115, 103, 95, 102, 111, 113, 107, 110, 115, 95, 101, 95, 99, 111, 111, 115, 108, 96, 116, 113, 101, 107, 117, 111, 114, 104, 105, 107, 100, 112, 106, 109, 101, 97, 105, 102, 112, 112, 109, 97, 94, 106, 100, 115, 116, 100, 112, 114, 107, 113, 115, 105, 109, 106, 93, 102, 107, 104, 100, 113, 111, 111, 100, 105, 111, 112, 106, 95, 105, 91, 99, 105, 111, 108, 100, 106, 98, 111, 111, 108, 97, 98, 93, 105, 107, 108, 99, 100, 89, 106, 96, 90, 106, 102, 105, 90, 99, 99, 86, 92, 89, 99, 88, 102, 101, 90, 92, 97, 100, 94, 93, 87, 89, 95, 99, 95, 78, 93, 87, 87, 79, 95, 83, 81, 83, 83, 87, 87, 82, 82, 84, 87, 94, 88, 80, 90, 73, 71, 71, 73, 76, 75, 68, 80, 69, 70, 81, 86, 88, 78, 88, 77, 75, 71, 72, 73, 63, 82, 62, 70, 79, 68, 73, 77, 79, 79, 61, 62, 77, 69, 67, 69, 73, 66, 58, 63, 62, 74, 66, 67, 67, 58, 61, 62, 52, 61, 63, 56, 66, 63, 53, 55, 53, 62, 60, 52, 58, 63, 59, 57, 42, 48, 52, 49, 39, 42, 56, 36, 56, 37, 50, 45, 38, 46, 35, 47, 45, 32, 31, 33, 29, 38, 47, 41, 39, 46, 27, 46, 27, 36, 26, 35, 22, 39, 41, 42, 43, 31, 25, 20, 29, 30, 34, 17, 30, 26, 18, 35, 26, 22, 33, 26, 21, 29, 21, 21, 24, 16, 12, 20, 26, 14, 7, 14, 10, 12, 21, 11, 10, 8, 3, 5, 0, 8, 3, 3, 6, -2, 6, 11, -1, 11, -6, 1, -9, -4, -10, -6, -8, -5, -8, -10, 1, 7, 7, -10, -5, -8, -5, -11, -17, -9, -15, -19, 2, -11, 1, -4, -23, -7, -7, -9, -12, -21, -8, -21, -19, -7, -8, -20, -22, -16, -9, -10, -18, -25, -13, -23, -13, -34, -23, -19, -32, -29, -33, -30, -29, -26, -38, -27, -34, -35, -36, -39, -20, -21, -25, -27, -41, -37, -41, -46, -39, -31, -33, -36, -39, -43, -38, -33, -33, -38, -34, -37, -50, -42, -46, -52, -51, -51, -40, -46, -40, -51, -58, -46, -52, -37, -38, -51, -60, -45, -42, -39, -61, -52, -49, -47, -47, -49, -48, -57, -52, -63, -65, -44, -61, -54, -46, -64, -65, -61, -48, -61, -64, -67, -62, -63, -69, -62, -71, -59, -73, -61, -56, -69, -65, -62, -74, -65, -61, -72, -58, -55, -58, -66, -72, -61, -74, -57, -65, -66, -76, -79, -75, -61, -60, -65, -65, -77, -69, -64, -74, -60, -82, -77, -72, -83, -68, -72, -73, -66, -66, -68, -79, -76, -69, -85, -85, -81, -75, -65, -71, -81, -82, -69, -68, -74, -83, -88, -70, -76, -68, -89, -77, -84, -71, -86, -81, -82, -72, -76, -87, -84, -89, -76, -79, -88, -89, -81, -71, -80, -92, -92, -74, -83, -84, -75, -85, -81, -77, -73, -86, -78, -71, -92, -80, -84, -87, -88, -76, -71, -90, -76, -90, -71, -75, -84, -77, -82, -75, -86, -92, -80, -73, -90, -84, -76, -93, -72, -76, -81, -90, -82, -82, -70, -74, -71, -78, -84, -71, -82, -88, -84, -76, -80, -75, -69, -70, -80, -70, -90, -91, -85, -78, -79, -70, -79, -81, -78, -74, -91, -72, -87, -79, -84, -81, -74, -86, -83, -85, -85, -81, -68, -78, -79, -84, -65, -78, -68, -73, -78, -66, -68, -76, -67, -65, -76, -78, -71, -64, -68, -76, -67, -61, -71, -71, -76, -81, -78, -80, -71, -81, -60, -66, -81, -80, -75, -69, -77, -79, -62, -70, -60, -68, -67, -76, -76, -74, -62, -70, -56, -55, -52, -63, -69, -68, -61, -55, -64, -61, -57, -50, -67, -54, -57, -60, -49, -60, -64, -53, -53, -60, -48, -43, -43, -63, -60, -64, -50, -61, -54, -42, -50, -54, -57, -51, -38, -58, -49, -39, -58, -42, -35, -51, -54, -41, -35, -41, -34, -50, -37, -46, -44, -49, -33, -37, -34, -32, -49, -28, -38, -31, -31, -28, -44, -36, -32, -24, -26, -24, -31, -30, -23, -42, -21, -32, -40, -23, -36, -36, -25, -33, -30, -28, -27, -27, -21, -31, -30, -32, -26, -15, -27, -14, -15, -11, -11, -23, -22, -16, -20, -8, -8, -13, -20, -9, -19, -13, -14, -10, 1, -4, 2, -15, -8, -18, -1, -4, 3, 6, 5, -6, -15, -2, -9, -8, -5, -10, 6, 6, 2, -2, 10, 4, 14, 13, 1, 6, 2, 9, 14, 13, -1, 16, -2, 8, 16, 18, 9, 20, 26, 14, 14, 19, 24, 25, 43, 25, 40, 32, 51, 37, 47, 61, 48, 43, 49, 56, 56, 56, 74, 70, 78, 67, 81, 60, 76, 82, 69, 87, 84, 86, 81, 87, 77, 75, 77, 84, 90, 77, 80, 91, 85, 93, 75, 89, 85, 74, 78, 76, 79, 83, 66, 81, 80, 68, 68, 70, 71, 70, 69, 58, 57, 68, 56, 61, 45, 51, 48, 54, 31, 39, 37, 24, 41, 38, 24, 30, 12, 21, 10, 11, 18, 0, 0, 2, -4, 4, 6, -16, -17, -9, -19, -7, -10, -20, -17, -30, -27, -20, -33, -26, -33, -40, -38, -34, -52, -49, -36, -52, -47, -42, -41, -50, -64, -67, -54, -55, -47, -52, -55, -58, -64, -48, -58, -70, -54, -58, -68, -48, -60, -62, -64, -58, -59, -48, -61, -55, -53, -37, -46, -37, -39, -33, -47, -25, -26, -42, -31, -32, -22, -29, -19, -16, -14, -15, -22, -8, -8, -12, -2, 1, 6, 15, 15, 21, 5, 11, 20, 34, 33, 27, 27, 23, 42, 39, 34, 42, 38, 54, 47, 63, 43, 65, 62, 62, 66, 70, 57, 77, 58, 66, 65, 84, 65, 78, 80, 82, 88, 69, 88, 82, 86, 75, 83, 87, 93, 81, 73, 72, 85, 88, 85, 77, 90, 79, 88, 67, 69, 81, 83, 79, 66, 61, 76, 72, 58, 56, 56, 66, 64, 56, 54, 45, 52, 52, 41, 39, 37, 30, 37, 40, 37, 31, 17, 24, 8, 6, 4, 1, 8, -6, 9, 4, 6, -7, -6, -3, -13, -22, -8, -32, -28, -15, -31, -35, -42, -25, -45, -42, -31, -42, -41, -43, -42, -59, -49, -62, -44, -57, -46, -61, -54, -46, -68, -68, -69, -54, -56, -68, -52, -56, -69, -68, -67, -51, -66, -62, -61, -64, -45, -48, -46, -47, -48, -51, -42, -53, -51, -52, -28, -26, -44, -34, -27, -34, -21, -23, -24, -25, -12, -6, -7, -12, 3, -11, -2, 11, -3, 0, 18, 1, 9, 18, 12, 25, 31, 27, 33, 39, 28, 39, 30, 42, 52, 56, 49, 46, 57, 65, 58, 71, 54, 54, 60, 64, 67, 66, 76, 63, 72, 70, 72, 68, 81, 74, 72, 69, 76, 83, 91, 71, 92, 74, 90, 89, 92, 73, 81, 78, 72, 81, 81, 71, 77, 87, 74, 77, 69, 59, 64, 74, 61, 53, 62, 56, 63, 56, 60, 59, 42, 38, 52, 45, 28, 46, 35, 33, 32, 33, 33, 19, 9, 22, 10, 19, 5, 13, -5, -8, 7, -16, -3, -5, -14, -18, -6, -22, -24, -33, -31, -33, -22, -39, -40, -39, -34, -49, -34, -54, -47, -58, -43, -45, -58, -48, -52, -46, -54, -47, -59, -61, -58, -64, -48, -60, -65, -60, -54, -61, -66, -49, -55, -60, -63, -62, -54, -55, -46, -61, -42, -44, -55, -37, -51, -40, -39, -46, -48, -28, -26, -32, -39, -24, -31, -16, -18, -23, -4, -6, 0, -17, -12, 4, 6, 10, 6, 7, 14, 23, 21, 20, 18, 30, 25, 32, 42, 43, 47, 51, 50, 33, 36, 40, 46, 43, 54, 54, 61, 72, 59, 62, 76, 65, 62, 72, 82, 72, 80, 80, 77, 78, 90, 70, 76, 80, 84, 91, 82, 81, 88, 82, 91, 81, 81, 81, 74, 70, 69, 87, 71, 85, 80, 82, 83, 62, 67, 79, 70, 74, 62, 49, 62, 50, 55, 58, 53, 50, 44, 37, 39, 27, 39, 44, 22, 18, 35, 17, 9, 25, 7, 22, 0, 4, 7, 4, 3, 0, -7, -17, -5, -19, -12, -10, -30, -12, -36, -20, -22, -42, -33, -26, -42, -33, -39, -36, -38, -57, -53, -46, -51, -41, -47, -52, -60, -61, -47, -58, -50, -68, -50, -70, -49, -49, -58, -68, -66, -53, -50, -68, -50, -45, -59, -51, -57, -58, -44, -44, -53, -44, -47, -53, -53, -40, -43, -40, -39, -40, -32, -23, -32, -19, -22, -20, -24, -21, -8, -14, -4, 7, 4, 6, 16, 14, 13, 23, 5, 13, 32, 30, 25, 33, 29, 31, 29, 36, 30, 43, 42, 59, 52, 61, 53, 56, 67, 72, 63, 74, 72, 69, 80, 79, 83, 77, 72, 76, 87, 67, 71, 79, 81, 71, 85, 91, 73, 81, 77, 94, 85, 76, 73, 82, 89, 88, 87, 72, 79, 86, 67, 83, 83, 65, 60, 68, 75, 65, 62, 62, 51, 50, 65, 56, 46, 58, 37, 44, 48, 36, 35, 36, 42, 37, 17, 20, 20, 28, 15, 8, 14, 9, 16, 14, 9, 3, 2, 3, -19, -16, -26, -9, -19, -25, -30, -25, -33, -41, -42, -45, -39, -47, -42, -33, -47, -54, -45, -40, -53, -62, -61, -63, -49, -56, -52, -52, -56, -55, -49, -55, -50, -60, -67, -69, -54, -63, -54, -54, -56, -51, -55, -55, -54, -42, -54, -59, -55, -43, -38, -33, -49, -35, -37, -40, -35, -33, -28, -23, -31, -34, -15, -23, -11, -23, -22, -1, 1, 7, 6, -11, 4, 17, 8, 20, 3, 28, 29, 23, 23, 23, 35, 20, 31, 47, 41, 41, 44, 42, 59, 62, 54, 67, 56, 58, 55, 56, 73, 72, 69, 78, 72, 74, 67, 77, 68, 67, 83, 82, 73, 78, 84, 83, 73, 74, 71, 81, 82, 74, 86, 70, 72, 91, 91, 68, 78, 86, 70, 83, 81, 76, 60, 67, 78, 71, 62, 66, 55, 61, 69, 64, 48, 55, 46, 58, 34, 36, 47, 27, 35, 39, 35, 18, 23, 18, 18, 18, 5, 20, 12, -2, 4, 10, 4, -1, -8, -16, -11, -21, -22, -10, -13, -18, -17, -37, -31, -30, -26, -33, -42, -35, -35, -42, -56, -37, -59, -50, -60, -55, -46, -61, -46, -51, -60, -63, -64, -52, -69, -54, -56, -53, -47, -61, -64, -49, -50, -58, -66, -54, -62, -52, -56, -55, -44, -48, -40, -52, -40, -53, -33, -34, -26, -44, -23, -30, -26, -30, -34, -13, -27, -20, -11, 0, -9, 5, -11, -4, 6, -6, 12, 7, 19, 12, 13, 31, 28, 23, 18, 36, 36, 25, 29, 52, 43, 34, 37, 41, 61, 53, 58, 58, 50, 71, 59, 60, 70, 68, 67, 76, 84, 77, 71, 70, 76, 68, 88, 83, 74, 82, 71, 91, 81, 84, 84, 87, 79, 72, 80, 70, 86, 69, 90, 84, 87, 76, 69, 68, 78, 83, 66, 74, 57, 67, 61, 66, 53, 47, 54, 56, 42, 47, 49, 51, 37, 36, 45, 38, 25, 35, 21, 18, 9, 15, 14, 8, 5, 1, 15, 11, -3, -4, -4, -9, -16, -2, -23, -10, -32, -27, -19, -24, -38, -21, -33, -42, -36, -30, -32, -44, -46, -51, -58, -43, -59, -55, -55, -45, -66, -48, -61, -63, -58, -53, -65, -65, -48, -57, -63, -48, -49, -65, -69, -52, -48, -65, -66, -52, -50, -51, -62, -45, -37, -38, -54, -47, -48, -38, -35, -41, -27, -25, -23, -31, -36, -18, -9, -26, -25, -4, -11, 0, 2, -11, -7, -8, 7, 14, 10, 2, 27, 18, 17, 16, 29, 30, 37, 25, 33, 30, 49, 40, 41, 36, 57, 53, 56, 66, 64, 65, 55, 66, 77, 70, 77, 82, 81, 67, 64, 75, 66, 77, 90, 74, 78, 79, 89, 90, 81, 80, 92, 88, 88, 93, 82, 88, 80, 88, 77, 84, 89, 77, 74, 68, 69, 63, 68, 65, 64, 73, 65, 63, 67, 49, 59, 50, 48, 51, 56, 38, 47, 50, 31, 31, 33, 39, 28, 20, 23, 21, 15, 3, 17, 9, 4, -6, -2, -8, -11, 1, -12, -22, -17, -10, -27, -12, -28, -30, -35, -24, -43, -24, -45, -44, -36, -51, -43, -40, -37, -43, -44, -53, -58, -53, -61, -47, -52, -49, -50, -59, -63, -54, -47, -52, -51, -54, -56, -52, -58, -49, -67, -45, -65, -53, -56, -62, -46, -47, -42, -46, -39, -43, -32, -32, -39, -30, -36, -26, -35, -18, -32, -35, -16, -12, -8, -19, -5, -9, -8, 3, 8, -10, 8, -1, 6, 5, 21, 28, 22, 26, 34, 31, 31, 29, 38, 34, 37, 39, 44, 47, 59, 44, 50, 57, 57, 54, 63, 72, 55, 65, 59, 71, 72, 79, 68, 77, 75, 86, 82, 76, 76, 75, 92, 77, 74, 79, 88, 87, 87, 71, 79, 91, 77, 83, 75, 70, 76, 85, 88, 84, 64, 69, 65, 66, 80, 68, 71, 71, 54, 69, 48, 61, 59, 56, 40, 45, 44, 43, 48, 41, 42, 33, 40, 17, 25, 16, 18, 21, 7, 13, 4, 15, -6, -9, 8, -13, -16, -18, -22, -16, -14, -12, -15, -20, -27, -24, -20, -33, -40, -30, -45, -47, -43, -42, -43, -56, -58, -55, -46, -55, -46, -44, -58, -67, -55, -52, -62, -58, -65, -48, -59, -58, -65, -68, -69, -50, -51, -64, -47, -51, -51, -42, -63, -53, -50, -46, -57, -42, -54, -41, -35, -39, -34, -41, -29, -33, -38, -29, -29, -28, -16, -16, -16, -18, -1, 2, -9, 1, 8, 15, 16, 6, 4, 21, 8, 12, 19, 33, 30, 32, 43, 37, 26, 48, 45, 45, 42, 44, 51, 48, 45, 50, 54, 55, 66, 73, 75, 76, 75, 80, 80, 68, 87, 67, 81, 72, 73, 76, 74, 81, 92, 80, 84, 85, 87, 80, 91, 92, 87, 76, 87, 71, 79, 81, 82, 73, 80, 83, 62, 62, 78, 66, 64, 75, 69, 72, 53, 47, 52, 53, 52, 59, 46, 41, 53, 33, 40, 45, 35, 24, 27, 12, 30, 16, 11, 23, 9, 2, -5, 4, -9, -13, -4, -13, -14, -8, -7, -22, -10, -12, -32, -21, -27, -22, -32, -31, -32, -42, -47, -54, -46, -43, -53, -49, -57, -57, -49, -45, -46, -63, -59, -48, -63, -47, -56, -67, -51, -55, -58, -65, -69, -64, -61, -54, -45, -63, -49, -45, -54, -60, -43, -50, -57, -38, -42, -53, -32, -51, -49, -24, -30, -35, -30, -21, -36, -18, -16, -19, -14, -17, -19, -11, 4, -10, -4, -2, -5, 8, 18, 22, 21, 15, 16, 28, 35, 38, 21, 33, 27, 33, 50, 36, 37, 49, 46, 50, 62, 65, 63, 59, 66, 58, 69, 72, 72, 67, 69, 66, 82, 76, 74, 85, 73, 88, 88, 89, 78, 79, 91, 81, 84, 87, 93, 83, 85, 83, 91, 89, 72, 71, 72, 83, 69, 86, 78, 64, 79, 79, 78, 67, 65, 54, 60, 59, 48, 54, 53, 43, 50, 34, 38, 41, 34, 38, 30, 22, 37, 28, 26, 24, 23, 22, 12, 1, 4, 11, -7, -5, 7, 1, -16, 0, -25, -18, -21, -24, -33, -28, -26, -19, -39, -38, -42, -43, -48, -53, -45, -51, -38, -48, -40, -40, -50, -62, -44, -53, -47, -58, -55, -68, -48, -55, -68, -54, -61, -69, -65, -64, -64, -53, -51, -55, -54, -51, -42, -49, -49, -41, -47, -51, -35, -46, -40, -36, -35, -44, -45, -39, -23, -28, -28, -26, -16, -16, -14, -23, -14, -10, -10, -5, -6, 7, 0, 11, 8, 16, 24, 17, 28, 15, 33, 17, 29, 21, 42, 29, 32, 34, 49, 40, 44, 57, 53, 65, 47, 58, 63, 65, 73, 58, 64, 58, 82, 79, 80, 67, 73, 69, 78, 87, 83, 85, 84, 87, 90, 85, 75, 84, 74, 92, 72, 78, 83, 80, 87, 80, 72, 82, 68, 79, 77, 66, 64, 62, 60, 60, 76, 52, 72, 48, 69, 51, 54, 60, 58, 39, 48, 52, 51, 28, 27, 38, 19, 17, 24, 30, 31, 5, 15, 19, 18, 14, 12, 6, -11, -5, -15, -2, -2, -23, -8, -23, -25, -30, -18, -23, -32, -28, -25, -45, -45, -38, -35, -36, -48, -56, -59, -53, -44, -59, -47, -51, -67, -49, -47, -58, -50, -67, -52, -49, -51, -65, -65, -58, -61, -58, -46, -54, -45, -55, -56, -47, -46, -52, -60, -58, -40, -42, -55, -41, -35, -48, -43, -27, -41, -21, -18, -38, -27, -29, -18, -26, -25, -2, 2, -10, -1, -12, -6, -7, 6, 1, 23, 47, 41, -5, 0, 47, 64, 10, 4, 41, 60, 65, 22, 30, 58, 93, 51, 9, 42, 96, 88, 29, 33, 72, 112, 65, 44, 53, 112, 91, 61, 34, 90, 116, 81, 40, 71, 100, 109, 54, 41, 86, 126, 83, 56, 66, 95, 111, 79, 36, 85, 116, 92, 46, 52, 93, 94, 57, 36, 67, 110, 93, 26, 37, 78, 90, 47, 17, 46, 91, 57, 26, 13, 61, 61, 29, -14, 16, 62, 42, -7, -18, 23, 54, 15, -29, -3, 40, 30, -29, -37, -7, 36, -10, -43, -38, -4, 11, -49, -70, -40, 12, -13, -75, -64, -28, -8, -41, -86, -39, -18, -39, -74, -68, -33, -31, -62, -99, -72, -36, -27, -75, -91, -38, -18, -56, -96, -75, -38, -38, -77, -90, -44, -20, -43, -97, -71, -22, -31, -64, -92, -40, -2, -34, -75, -69, -25, 0, -40, -71, -39, 4, -5, -45, -41, 13, 27, -31, -43, -13, 18, 23, -28, -19, 11, 35, 9, -31, 10, 47, 48, 3, -7, 37, 62, 43, 0, 24, 70, 78, 18, 25, 48, 84, 65, 20, 45, 87, 78, 50, 35, 76, 101, 80, 45, 62, 89, 96, 68, 50, 90, 106, 90, 55, 54, 111, 109, 65, 51, 71, 125, 105, 53, 42, 90, 108, 84, 46, 65, 104, 95, 60, 53, 85, 108, 74, 21, 54, 83, 84, 39, 15, 55, 99, 57, 13, 27, 64, 62, 20, 0, 46, 68, 38, -13, 13, 51, 57, 8, -9, 23, 38, 22, -21, -23, 28, 21, -24, -56, -24, 20, 1, -49, -53, -18, 15, -29, -67, -47, 4, -8, -54, -71, -18, -1, -55, -88, -54, -22, -28, -62, -74, -39, -18, -42, -90, -82, -35, -36, -74, -103, -65, -31, -39, -83, -74, -23, -16, -58, -99, -45, -19, -51, -87, -66, -21, -29, -53, -74, -55, -19, -29, -76, -65, -20, -2, -26, -66, -41, -3, -8, -50, -58, 3, 11, -7, -44, -24, 31, 20, -27, -26, 9, 55, 22, -9, 8, 56, 54, 15, 0, 32, 70, 55, -3, 21, 67, 86, 39, 28, 55, 98, 70, 31, 30, 87, 108, 59, 33, 72, 95, 99, 35, 48, 98, 113, 73, 40, 74, 122, 106, 68, 43, 95, 108, 83, 52, 61, 118, 103, 70, 44, 78, 108, 73, 54, 48, 93, 90, 49, 26, 78, 104, 70, 26, 33, 83, 78, 47, 20, 49, 92, 70, 11, 20, 61, 68, 36, 11, 30, 55, 35, -1, -10, 30, 51, 2, -20, -11, 27, 19, -34, -23, 16, 25, -18, -49, -30, 18, 2, -32, -47, -7, 3, -32, -58, -59, -19, -11, -48, -79, -47, -21, -28, -78, -74, -23, -16, -71, -85, -62, -11, -39, -95, -83, -34, -17, -67, -91, -59, -15, -50, -88, -89, -36, -14, -61, -83, -67, -20, -34, -66, -75, -28, -21, -51, -72, -62, -21, -16, -47, -72, -22, 1, -35, -60, -33, 0, -3, -40, -44, -11, 30, -9, -31, -25, 14, 31, -1, -16, 23, 61, 39, -1, 5, 47, 58, 13, 1, 39, 66, 65, 5, 15, 59, 75, 51, 14, 58, 90, 87, 26, 37, 80, 109, 73, 45, 68, 95, 91, 62, 34, 84, 109, 89, 37, 71, 115, 110, 59, 39, 90, 106, 81, 41, 60, 110, 119, 67, 34, 75, 116, 97, 41, 51, 102, 107, 63, 30, 61, 107, 78, 35, 30, 80, 92, 54, 17, 39, 80, 56, 17, 22, 58, 76, 40, 2, 24, 62, 59, -9, -16, 24, 42, 4, -15, -7, 21, 18, -15, -42, -14, 22, -13, -41, -29, -8, 10, -34, -68, -22, -2, -32, -75, -55, -14, -3, -49, -72, -62, -17, -38, -78, -70, -41, -18, -70, -99, -57, -32, -29, -86, -84, -56, -19, -59, -83, -77, -32, -43, -67, -91, -57, -15, -50, -92, -64, -17, -29, -65, -83, -50, -7, -24, -83, -51, -12, -8, -55, -73, -31, 8, -16, -46, -36, 8, 14, -20, -43, -22, 28, 9, -26, -15, 20, 30, 16, -13, 3, 44, 48, -1, -2, 46, 56, 42, 12, 16, 79, 77, 14, 17, 63, 85, 63, 29, 44, 91, 85, 55, 31, 75, 113, 74, 38, 54, 98, 96, 70, 32, 77, 104, 105, 52, 67, 100, 123, 68, 57, 87, 113, 102, 56, 63, 91, 102, 84, 37, 63, 112, 92, 58, 52, 95, 103, 76, 25, 56, 98, 76, 40, 35, 59, 83, 64, 16, 22, 66, 74, 25, -1, 43, 73, 34, -6, 1, 53, 41, 14, -25, 12, 50, 24, -34, -18, 11, 38, -6, -44, -12, 31, -8, -40, -41, 0, 0, -34, -77, -45, -11, -17, -61, -63, -31, -8, -35, -72, -60, -10, -37, -66, -89, -52, -12, -55, -98, -85, -20, -27, -67, -82, -50, -14, -56, -81, -69, -38, -38, -64, -101, -50, -21, -37, -90, -75, -26, -28, -57, -72, -58, -10, -20, -71, -54, -14, -7, -34, -55, -34, 13, 8, -36, -56, -9, 14, -21, -54, -16, 30, 34, -12, -31, 17, 40, 23, -26, 8, 56, 57, 6, -2, 36, 60, 53, 12, 16, 79, 69, 31, 14, 47, 83, 75, 22, 38, 79, 96, 68, 26, 54, 115, 94, 47, 49, 84, 123, 71, 47, 69, 101, 103, 58, 46, 85, 125, 72, 43, 76, 123, 108, 67, 54, 92, 118, 93, 45, 57, 107, 100, 47, 36, 76, 101, 73, 39, 43, 85, 80, 39, 19, 57, 91, 73, 27, 10, 73, 63, 39, 1, 21, 53, 39, 4, -16, 32, 41, 1, -35, 4, 28, 26, -32, -29, 8, 22, -2, -40, -18, 1, 8, -55, -66, -27, 3, -33, -70, -58, -13, -14, -55, -69, -45, -3, -33, -73, -78, -37, -20, -62, -98, -65, -19, -37, -80, -92, -32, -17, -69, -104, -69, -20, -52, -87, -84, -30, -30, -69, -87, -72, -10, -37, -73, -72, -28, -12, -39, -69, -46, -17, -13, -51, -74, -18, 4, -22, -65, -51, 1, 18, -34, -53, -1, 32, -9, -27, -15, 21, 38, -11, -15, 7, 41, 36, -11, 2, 57, 55, 11, 4, 28, 73, 50, 5, 10, 72, 79, 45, 22, 55, 96, 78, 31, 38, 67, 97, 72, 38, 55, 115, 90, 60, 37, 85, 122, 81, 37, 65, 103, 100, 70, 48, 79, 108, 84, 42, 57, 116, 112, 61, 44, 83, 114, 93, 55, 48, 100, 96, 52, 30, 71, 97, 93, 38, 30, 86, 100, 59, 12, 37, 87, 71, 19, 22, 51, 82, 33, -4, 22, 53, 46, -9, -8, 26, 51, 21, -33, -4, 39, 22, -15, -43, -9, 17, -1, -47, -31, -2, -1, -40, -63, -23, -6, -32, -63, -73, -28, -5, -52, -79, -44, -7, -32, -83, -88, -27, -9, -49, -88, -75, -35, -44, -93, -83, -54, -21, -52, -92, -75, -21, -38, -83, -82, -48, -26, -45, -95, -60, -31, -33, -76, -75, -35, -4, -28, -63, -61, -7, -8, -36, -78, -18, 9, -16, -52, -50, -6, 20, -18, -39, -16, 22, 10, -32, -15, 28, 36, 8, -16, 15, 59, 44, -11, -11, 50, 64, 37, 8, 20, 72, 61, 13, 22, 48, 85, 53, 16, 46, 98, 78, 53, 40, 82, 116, 71, 41, 61, 102, 117, 75, 54, 69, 113, 89, 43, 49, 110, 115, 84, 59, 76, 113, 93, 53, 49, 97, 112, 69, 35, 67, 109, 92, 55, 42, 83, 112, 76, 39, 59, 94, 88, 42, 17, 59, 92, 52, 22, 25, 61, 65, 25, 15, 44, 73, 40, -4, 13, 44, 49, -3, -14, 13, 40, 24, -35, -35, 22, 32, -14, -35, -13, 20, -5, -57, -43, -15, 2, -38, -65, -40, 4, -7, -56, -59, -37, 1, -56, -88, -73, -16, -17, -71, -93, -45, -18, -59, -94, -69, -29, -39, -78, -95, -53, -35, -48, -80, -88, -28, -17, -67, -86, -60, -21, -51, -85, -79, -34, -9, -57, -74, -42, -14, -34, -77, -61, -20, 10, -38, -72, -35, 18, 2, -47, -53, 6, 33, -13, -52, -25, 29, 17, -23, -27, 13, 42, 17, -24, -9, 52, 43, 17, -6, 32, 76, 52, 0, 12, 61, 79, 44, 17, 45, 95, 80, 23, 46, 77, 105, 66, 34, 65, 114, 80, 47, 51, 99, 105, 63, 35, 78, 124, 99, 69, 48, 87, 114, 84, 51, 70, 107, 98, 52, 40, 94, 114, 74, 49, 52, 110, 102, 57, 31, 81, 104, 77, 31, 48, 76, 92, 53, 20, 57, 81, 64, 12, 27, 70, 82, 27, -2, 30, 71, 33, -10, 5, 46, 49, 16, -14, 4, 35, 21, -25, -28, 7, 38, -13, -51, -19, 13, 10, -52, -58, -28, 10, -22, -57, -49, -6, -4, -59, -77, -33, -3, -46, -92, -81, -36, -30, -64, -100, -56, -17, -53, -93, -87, -45, -31, -60, -99, -57, -24, -40, -80, -79, -31, -32, -53, -98, -74, -30, -40, -84, -69, -41, -2, -42, -70, -58, -17, -22, -56, -72, -28, -7, -22, -49, -33, -6, 11, -37, -57, -6, 24, 3, -27, -30, 24, 23, -9, -20, 2, 53, 25, -8, -10, 44, 48, 15, -8, 31, 65, 54, 21, 16, 54, 81, 47, 26, 43, 98, 82, 27, 28, 81, 102, 62, 30, 65, 106, 90, 60, 43, 86, 119, 82, 35, 54, 111, 108, 75, 39, 84, 119, 82, 60, 64, 115, 114, 56, 41, 70, 116, 80, 50, 50, 90, 105, 67, 42, 59, 95, 78, 39, 42, 82, 99, 59, 10, 50, 91, 73, 28, 1, 55, 67, 37, 5, 13, 62, 40, 0, -11, 29, 43, 9, -16, -10, 20, 30, -27, -33, 5, 20, -13, -42, -43, -2, 0, -48, -61, -32, 9, -21, -68, -72, -26, -9, -54, -71, -61, -16, -31, -86, -78, -27, -27, -67, -101, -61, -36, -42, -71, -82, -52, -20, -67, -90, -63, -19, -37, -79, -85, -43, -21, -54, -93, -80, -26, -31, -69, -72, -42, 0, -44, -62, -70, -18, 1, -45, -67, -35, -2, -17, -61, -49, -7, 24, -11, -53, -8, 17, 17, -24, -36, 10, 33, 14, -28, 7, 50, 43, -5, -6, 39, 77, 23, -1, 32, 73, 63, 35, 7, 55, 97, 63, 28, 41, 80, 101, 56, 31, 80, 101, 77, 47, 43, 110, 94, 59, 33, 78, 121, 103, 52, 64, 104, 120, 62, 47, 72, 111, 110, 48, 55, 91, 115, 87, 35, 80, 100, 89, 54, 35, 75, 109, 58, 44, 54, 91, 91, 50, 23, 69, 92, 63, 18, 27, 81, 63, 30, 16, 35, 73, 43, -6, 4, 57, 60, 10, -23, 1, 46, 21, -29, -14, 22, 31, -20, -54, -21, 13, -3, -38, -57, -15, 8, -30, -74, -38, 5, -9, -68, -75, -37, -10, -49, -87, -51, -22, -30, -71, -95, -52, -15, -50, -97, -66, -32, -30, -75, -100, -64, -24, -61, -92, -78, -30, -39, -65, -99, -53, -17, -34, -93, -67, -32, -19, -60, -80, -54, -12, -27, -63, -61, -7, 11, -39, -72, -26, 2, 0, -34, -57, -8, 20, -8, -33, -25, 38, 23, -11, -26, 13, 45, 23, -8, 11, 40, 42, 19, -1, 26, 70, 55, 5, 16, 62, 69, 33, 19, 48, 93, 78, 20, 43, 88, 96, 68, 24, 68, 99, 79, 49, 56, 95, 119, 67, 47, 64, 108, 91, 62, 63, 101, 123, 83, 43, 63, 107, 117, 54, 50, 82, 113, 74, 41, 66, 110, 111, 57, 45, 79, 93, 67, 27, 37, 78, 83, 39, 31, 50, 81, 60, 12, 26, 59, 63, 31, -4, 24, 53, 52, -4, -16, 45, 45, 12, -21, -8, 48, 28, -23, -23, 9, 16, -10, -40, -23, 14, -7, -38, -58, -14, 12, -20, -78, -46, -8, -22, -64, -85, -38, -10, -49, -69, -77, -32, -27, -77, -89, -61, -24, -33, -77, -91, -35, -30, -62, -94, -69, -25, -33, -80, -92, -48, -26, -52, -86, -60, -30, -41, -66, -81, -36, -13, -45, -84, -61, -1, -5, -55, -70, -21, 9, -15, -69, -40, 4, 11, -32, -54, -17, 15, -8, -40, -16, 21, 36, 5, -22, 13);
end;
