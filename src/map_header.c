#include <nitro.h>
#include <string.h>

#include "map_header.h"

static const MapHeader mapHeaders[] = {
	{
		0x0,
		0x0,
		0x0,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x3E8,      //Day Music ID
		0x3E8,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		0x0,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x3,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x0,
		0x0,
		0x0,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x3E8,      //Day Music ID
		0x3E8,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		0x0,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x0,      //Map Type
		0x3,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x2,
		0x2,
		0x2,      //Map Matrix ID
		0x45D,      //Scripts Archive ID
		1044,	      //Map Scripts Archive ID
		0x271,      //Message Archive ID
		0x424,      //Day Music ID
		0x424,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x1,      //Events Archive ID
		0x0,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x6,      //Map Type
		0x3,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x6,
		0x0,
		0x0,      //Map Matrix ID
		0x2,      //Scripts Archive ID
		0x1F6,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x3F2,      //Day Music ID
		0x40F,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x2,      //Events Archive ID
		0x6,      //Map Label Text ID
		0x1,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x1,      //Map Type
		0x2,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x16,
		0xF,
		122,      //Map Matrix ID
		0x3,      //Scripts Archive ID
		503,	      //Map Scripts Archive ID
		0x18,      //Message Archive ID
		0x442,      //Day Music ID
		0x442,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x3,      //Events Archive ID
		0x6,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0x14,
		0x7B,      //Map Matrix ID
		0x4,      //Scripts Archive ID
		0x1F8,	      //Map Scripts Archive ID
		0x19,      //Message Archive ID
		0x43F,      //Day Music ID
		0x43F,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x4,      //Events Archive ID
		0x6,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		0x74,      //Map Matrix ID
		0x5,      //Scripts Archive ID
		0x1F9,	      //Map Scripts Archive ID
		0x1A,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x5,      //Events Archive ID
		0x6,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		0x75,      //Map Matrix ID
		0x6,      //Scripts Archive ID
		0x1FA,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x6,      //Events Archive ID
		0x6,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1F,
		0xF,
		0x8D,      //Map Matrix ID
		0x8,      //Scripts Archive ID
		0x1FC,	      //Map Scripts Archive ID
		0x1B,      //Message Archive ID
		0x3F2,      //Day Music ID
		0x40F,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x7,      //Events Archive ID
		0x5B,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1F,
		0xF,
		0x8E,      //Map Matrix ID
		0x9,      //Scripts Archive ID
		0x1FD,	      //Map Scripts Archive ID
		0x1C,      //Message Archive ID
		0x3F2,      //Day Music ID
		0x40F,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x8,      //Events Archive ID
		0x5B,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1F,
		0xF,
		143,      //Map Matrix ID
		0xA,      //Scripts Archive ID
		510,	      //Map Scripts Archive ID
		29,      //Message Archive ID
		0x3F2,      //Day Music ID
		0x40F,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x9,      //Events Archive ID
		0x5B,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		34,
		0xF,
		148,      //Map Matrix ID
		11,      //Scripts Archive ID
		511,	      //Map Scripts Archive ID
		30,      //Message Archive ID
		1093,      //Day Music ID
		1093,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0xA,      //Events Archive ID
		90,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		34,
		0xF,
		149,      //Map Matrix ID
		0xC,      //Scripts Archive ID
		512,	      //Map Scripts Archive ID
		0x1F,      //Message Archive ID
		1093,      //Day Music ID
		1093,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		11,      //Events Archive ID
		0x5A,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		34,
		0xF,
		150,      //Map Matrix ID
		0xD,      //Scripts Archive ID
		513,	      //Map Scripts Archive ID
		32,      //Message Archive ID
		1093,      //Day Music ID
		1093,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0xC,      //Events Archive ID
		0x5A,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		34,
		0xF,
		151,      //Map Matrix ID
		0xE,      //Scripts Archive ID
		514,	      //Map Scripts Archive ID
		33,      //Message Archive ID
		1093,      //Day Music ID
		1093,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0xD,      //Events Archive ID
		0x5A,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		34,
		0xF,
		152,      //Map Matrix ID
		0xF,      //Scripts Archive ID
		515,	      //Map Scripts Archive ID
		34,      //Message Archive ID
		1093,      //Day Music ID
		1093,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0xE,      //Events Archive ID
		0x5A,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		34,
		0xF,
		153,      //Map Matrix ID
		0x10,      //Scripts Archive ID
		516,	      //Map Scripts Archive ID
		35,      //Message Archive ID
		1093,      //Day Music ID
		1093,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0xF,      //Events Archive ID
		0x5A,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		34,
		0xF,
		154,      //Map Matrix ID
		0x11,      //Scripts Archive ID
		517,	      //Map Scripts Archive ID
		36,      //Message Archive ID
		1093,      //Day Music ID
		1093,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x10,      //Events Archive ID
		0x5A,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		207,      //Map Matrix ID
		0x12,      //Scripts Archive ID
		518,	      //Map Scripts Archive ID
		37,      //Message Archive ID
		1093,      //Day Music ID
		1093,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x11,      //Events Archive ID
		0x5A,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1F,
		0xF,
		132,      //Map Matrix ID
		0x13,      //Scripts Archive ID
		519,	      //Map Scripts Archive ID
		38,      //Message Archive ID
		0x3F2,      //Day Music ID
		0x40F,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x12,      //Events Archive ID
		0x6,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1F,
		0xF,
		208,      //Map Matrix ID
		0x14,      //Scripts Archive ID
		520,	      //Map Scripts Archive ID
		39,      //Message Archive ID
		0x3F2,      //Day Music ID
		0x40F,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x13,      //Events Archive ID
		0x6,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1F,
		0xF,
		208,      //Map Matrix ID
		0x15,      //Scripts Archive ID
		521,	      //Map Scripts Archive ID
		40,      //Message Archive ID
		0x3F2,      //Day Music ID
		0x40F,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x14,      //Events Archive ID
		0x6,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1F,
		0xF,
		208,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x3F2,      //Day Music ID
		0x40F,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x15,      //Events Archive ID
		0x6,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0x14,
		125,      //Map Matrix ID
		0x17,      //Scripts Archive ID
		523,	      //Map Scripts Archive ID
		41,      //Message Archive ID
		0x3E8,      //Day Music ID
		0x3E8,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x16,      //Events Archive ID
		0x6,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1F,
		0xF,
		132,      //Map Matrix ID
		0x18,      //Scripts Archive ID
		524,	      //Map Scripts Archive ID
		42,      //Message Archive ID
		0x3F2,      //Day Music ID
		0x40F,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x17,      //Events Archive ID
		0x6,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1F,
		0xF,
		208,      //Map Matrix ID
		0x19,      //Scripts Archive ID
		0x20D,	      //Map Scripts Archive ID
		43,      //Message Archive ID
		0x3F2,      //Day Music ID
		0x40F,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x18,      //Events Archive ID
		0x6,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1F,
		0xF,
		208,      //Map Matrix ID
		0x1A,      //Scripts Archive ID
		0x20E,	      //Map Scripts Archive ID
		44,      //Message Archive ID
		0x3F2,      //Day Music ID
		0x40F,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x19,      //Events Archive ID
		0x6,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1F,
		0xF,
		208,      //Map Matrix ID
		0x1B,      //Scripts Archive ID
		0x20F,	      //Map Scripts Archive ID
		45,      //Message Archive ID
		0x43F,      //Day Music ID
		0x43F,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x1A,      //Events Archive ID
		0x6,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		40,
		0xF,
		205,      //Map Matrix ID
		0x1C,      //Scripts Archive ID
		0x210,	      //Map Scripts Archive ID
		46,      //Message Archive ID
		1196,      //Day Music ID
		1196,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x1B,      //Events Archive ID
		118,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1F,
		0xF,
		140,      //Map Matrix ID
		0x1F,      //Scripts Archive ID
		0x213,	      //Map Scripts Archive ID
		49,      //Message Archive ID
		0x3F2,      //Day Music ID
		0x40F,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x1C,      //Events Archive ID
		93,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1F,
		0xF,
		132,      //Map Matrix ID
		32,      //Scripts Archive ID
		0x214,	      //Map Scripts Archive ID
		50,      //Message Archive ID
		0x3F2,      //Day Music ID
		0x40F,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		29,      //Events Archive ID
		0x6,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0x14,
		125,      //Map Matrix ID
		34,      //Scripts Archive ID
		534,	      //Map Scripts Archive ID
		52,      //Message Archive ID
		0x3E8,      //Day Music ID
		0x3E8,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		30,      //Events Archive ID
		0x6,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0x14,
		125,      //Map Matrix ID
		35,      //Scripts Archive ID
		535,	      //Map Scripts Archive ID
		53,      //Message Archive ID
		0x3E8,      //Day Music ID
		0x3E8,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x1F,      //Events Archive ID
		0x6,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0xF,
		0x9,
		0x0,      //Map Matrix ID
		36,      //Scripts Archive ID
		536,	      //Map Scripts Archive ID
		54,      //Message Archive ID
		1011,      //Day Music ID
		1040,      //Night Music ID
		0x0,      //Wild Encounters Archive ID
		32,      //Events Archive ID
		0x7,      //Map Label Text ID
		0x1,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x1,      //Map Type
		0x2,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x16,
		0xF,
		122,      //Map Matrix ID
		37,      //Scripts Archive ID
		537,	      //Map Scripts Archive ID
		55,      //Message Archive ID
		0x442,      //Day Music ID
		0x442,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		33,      //Events Archive ID
		0x7,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x18,
		0xF,
		112,      //Map Matrix ID
		38,      //Scripts Archive ID
		538,	      //Map Scripts Archive ID
		56,      //Message Archive ID
		0x43F,      //Day Music ID
		0x43F,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		34,      //Events Archive ID
		0x7,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x3,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		0x74,      //Map Matrix ID
		39,      //Scripts Archive ID
		539,	      //Map Scripts Archive ID
		0x39,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		35,      //Events Archive ID
		0x7,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		0x75,      //Map Matrix ID
		40,      //Scripts Archive ID
		540,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		36,      //Events Archive ID
		0x7,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1F,
		0xF,
		217,      //Map Matrix ID
		42,      //Scripts Archive ID
		542,	      //Map Scripts Archive ID
		58,      //Message Archive ID
		1011,      //Day Music ID
		1040,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		37,      //Events Archive ID
		103,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x8,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1F,
		0xF,
		218,      //Map Matrix ID
		43,      //Scripts Archive ID
		543,	      //Map Scripts Archive ID
		59,      //Message Archive ID
		1011,      //Day Music ID
		1040,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		38,      //Events Archive ID
		103,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x8,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1F,
		0xF,
		219,      //Map Matrix ID
		44,      //Scripts Archive ID
		544,	      //Map Scripts Archive ID
		0x3C,      //Message Archive ID
		1011,      //Day Music ID
		1040,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		39,      //Events Archive ID
		103,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x8,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		0x7B,      //Map Matrix ID
		45,      //Scripts Archive ID
		545,	      //Map Scripts Archive ID
		61,      //Message Archive ID
		1011,      //Day Music ID
		1040,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		40,      //Events Archive ID
		0x7,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		0x7B,      //Map Matrix ID
		46,      //Scripts Archive ID
		546,	      //Map Scripts Archive ID
		62,      //Message Archive ID
		1011,      //Day Music ID
		1040,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		41,      //Events Archive ID
		0x7,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		243,      //Map Matrix ID
		47,      //Scripts Archive ID
		547,	      //Map Scripts Archive ID
		63,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		42,      //Events Archive ID
		0x7,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		243,      //Map Matrix ID
		48,      //Scripts Archive ID
		548,	      //Map Scripts Archive ID
		64,      //Message Archive ID
		1011,      //Day Music ID
		1040,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		43,      //Events Archive ID
		0x7,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x7,
		0x1,
		0x0,      //Map Matrix ID
		50,      //Scripts Archive ID
		550,	      //Map Scripts Archive ID
		65,      //Message Archive ID
		1012,      //Day Music ID
		1041,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		44,      //Events Archive ID
		0x8,      //Map Label Text ID
		0x1,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x1,      //Map Type
		0x2,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x16,
		0xF,
		122,      //Map Matrix ID
		51,      //Scripts Archive ID
		551,	      //Map Scripts Archive ID
		66,      //Message Archive ID
		0x442,      //Day Music ID
		0x442,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		45,      //Events Archive ID
		0x8,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x19,
		0xF,
		113,      //Map Matrix ID
		52,      //Scripts Archive ID
		552,	      //Map Scripts Archive ID
		67,      //Message Archive ID
		0x43F,      //Day Music ID
		0x43F,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		46,      //Events Archive ID
		0x8,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x9,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		0x74,      //Map Matrix ID
		53,      //Scripts Archive ID
		553,	      //Map Scripts Archive ID
		68,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		47,      //Events Archive ID
		0x8,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		0x75,      //Map Matrix ID
		54,      //Scripts Archive ID
		554,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		48,      //Events Archive ID
		0x8,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1F,
		0xF,
		132,      //Map Matrix ID
		56,      //Scripts Archive ID
		556,	      //Map Scripts Archive ID
		70,      //Message Archive ID
		1012,      //Day Music ID
		1041,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		49,      //Events Archive ID
		0x8,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1F,
		0xF,
		208,      //Map Matrix ID
		0x39,      //Scripts Archive ID
		557,	      //Map Scripts Archive ID
		71,      //Message Archive ID
		1012,      //Day Music ID
		1041,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		50,      //Events Archive ID
		0x8,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1F,
		0xF,
		136,      //Map Matrix ID
		58,      //Scripts Archive ID
		558,	      //Map Scripts Archive ID
		0x48,      //Message Archive ID
		1012,      //Day Music ID
		1041,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		51,      //Events Archive ID
		0x8,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1F,
		0xF,
		208,      //Map Matrix ID
		59,      //Scripts Archive ID
		559,	      //Map Scripts Archive ID
		73,      //Message Archive ID
		1012,      //Day Music ID
		1041,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		52,      //Events Archive ID
		0x8,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1F,
		0xF,
		132,      //Map Matrix ID
		0x3C,      //Scripts Archive ID
		560,	      //Map Scripts Archive ID
		0x4A,      //Message Archive ID
		1012,      //Day Music ID
		1041,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		53,      //Events Archive ID
		0x8,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1F,
		0xF,
		208,      //Map Matrix ID
		61,      //Scripts Archive ID
		561,	      //Map Scripts Archive ID
		75,      //Message Archive ID
		1012,      //Day Music ID
		1041,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		54,      //Events Archive ID
		0x8,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1F,
		0xF,
		136,      //Map Matrix ID
		62,      //Scripts Archive ID
		562,	      //Map Scripts Archive ID
		76,      //Message Archive ID
		1012,      //Day Music ID
		1041,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		55,      //Events Archive ID
		0x8,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1F,
		0xF,
		208,      //Map Matrix ID
		63,      //Scripts Archive ID
		563,	      //Map Scripts Archive ID
		77,      //Message Archive ID
		1012,      //Day Music ID
		1041,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		56,      //Events Archive ID
		0x8,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		0x7B,      //Map Matrix ID
		64,      //Scripts Archive ID
		564,	      //Map Scripts Archive ID
		78,      //Message Archive ID
		1012,      //Day Music ID
		1041,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x39,      //Events Archive ID
		0x8,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1F,
		0xF,
		155,      //Map Matrix ID
		65,      //Scripts Archive ID
		565,	      //Map Scripts Archive ID
		79,      //Message Archive ID
		1012,      //Day Music ID
		1041,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		58,      //Events Archive ID
		94,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		0x7B,      //Map Matrix ID
		66,      //Scripts Archive ID
		566,	      //Map Scripts Archive ID
		80,      //Message Archive ID
		1012,      //Day Music ID
		1041,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		59,      //Events Archive ID
		0x8,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1F,
		0xF,
		132,      //Map Matrix ID
		67,      //Scripts Archive ID
		567,	      //Map Scripts Archive ID
		81,      //Message Archive ID
		1012,      //Day Music ID
		1041,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x3C,      //Events Archive ID
		0x8,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1F,
		0xF,
		208,      //Map Matrix ID
		68,      //Scripts Archive ID
		568,	      //Map Scripts Archive ID
		82,      //Message Archive ID
		1012,      //Day Music ID
		1041,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		61,      //Events Archive ID
		0x8,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1F,
		0xF,
		208,      //Map Matrix ID
		0x45,      //Scripts Archive ID
		569,	      //Map Scripts Archive ID
		83,      //Message Archive ID
		1012,      //Day Music ID
		1041,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		62,      //Events Archive ID
		0x8,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		0x7B,      //Map Matrix ID
		70,      //Scripts Archive ID
		570,	      //Map Scripts Archive ID
		84,      //Message Archive ID
		1012,      //Day Music ID
		1041,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		63,      //Events Archive ID
		0x8,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x8,
		0x2,
		0x0,      //Map Matrix ID
		71,      //Scripts Archive ID
		571,	      //Map Scripts Archive ID
		85,      //Message Archive ID
		1013,      //Day Music ID
		1042,      //Night Music ID
		0x1,      //Wild Encounters Archive ID
		64,      //Events Archive ID
		0x9,      //Map Label Text ID
		0x1,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x1,      //Map Type
		0x2,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x16,
		0xF,
		122,      //Map Matrix ID
		0x48,      //Scripts Archive ID
		572,	      //Map Scripts Archive ID
		86,      //Message Archive ID
		0x442,      //Day Music ID
		0x442,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		65,      //Events Archive ID
		0x9,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1A,
		0xF,
		220,      //Map Matrix ID
		73,      //Scripts Archive ID
		573,	      //Map Scripts Archive ID
		87,      //Message Archive ID
		0x43F,      //Day Music ID
		0x43F,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		66,      //Events Archive ID
		0x9,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1A,
		0xF,
		221,      //Map Matrix ID
		0x4A,      //Scripts Archive ID
		574,	      //Map Scripts Archive ID
		88,      //Message Archive ID
		0x43F,      //Day Music ID
		0x43F,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		67,      //Events Archive ID
		0x9,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x9,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		0x74,      //Map Matrix ID
		75,      //Scripts Archive ID
		575,	      //Map Scripts Archive ID
		89,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		68,      //Events Archive ID
		0x9,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		0x75,      //Map Matrix ID
		76,      //Scripts Archive ID
		576,	      //Map Scripts Archive ID
		90,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x45,      //Events Archive ID
		0x9,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x16,
		0xF,
		138,      //Map Matrix ID
		78,      //Scripts Archive ID
		578,	      //Map Scripts Archive ID
		91,      //Message Archive ID
		1013,      //Day Music ID
		1042,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		70,      //Events Archive ID
		96,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		58,
		0xF,
		266,      //Map Matrix ID
		79,      //Scripts Archive ID
		579,	      //Map Scripts Archive ID
		92,      //Message Archive ID
		1068,      //Day Music ID
		1068,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		71,      //Events Archive ID
		122,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		58,
		0xF,
		162,      //Map Matrix ID
		80,      //Scripts Archive ID
		580,	      //Map Scripts Archive ID
		93,      //Message Archive ID
		1068,      //Day Music ID
		1068,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x48,      //Events Archive ID
		122,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		58,
		0xF,
		163,      //Map Matrix ID
		81,      //Scripts Archive ID
		581,	      //Map Scripts Archive ID
		94,      //Message Archive ID
		1068,      //Day Music ID
		1068,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		73,      //Events Archive ID
		122,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		58,
		0xF,
		164,      //Map Matrix ID
		82,      //Scripts Archive ID
		582,	      //Map Scripts Archive ID
		95,      //Message Archive ID
		1068,      //Day Music ID
		1068,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x4A,      //Events Archive ID
		122,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1F,
		0xF,
		132,      //Map Matrix ID
		84,      //Scripts Archive ID
		584,	      //Map Scripts Archive ID
		97,      //Message Archive ID
		1013,      //Day Music ID
		1042,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		75,      //Events Archive ID
		0x9,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1F,
		0xF,
		135,      //Map Matrix ID
		85,      //Scripts Archive ID
		585,	      //Map Scripts Archive ID
		98,      //Message Archive ID
		1013,      //Day Music ID
		1042,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		76,      //Events Archive ID
		0x9,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1F,
		0xF,
		208,      //Map Matrix ID
		86,      //Scripts Archive ID
		586,	      //Map Scripts Archive ID
		99,      //Message Archive ID
		1013,      //Day Music ID
		1042,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		77,      //Events Archive ID
		0x9,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1F,
		0xF,
		208,      //Map Matrix ID
		87,      //Scripts Archive ID
		587,	      //Map Scripts Archive ID
		100,      //Message Archive ID
		1013,      //Day Music ID
		1042,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		78,      //Events Archive ID
		0x9,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		50,
		0xF,
		259,      //Map Matrix ID
		88,      //Scripts Archive ID
		588,	      //Map Scripts Archive ID
		101,      //Message Archive ID
		1024,      //Day Music ID
		1053,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		79,      //Events Archive ID
		0x15,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		170,      //Map Matrix ID
		89,      //Scripts Archive ID
		589,	      //Map Scripts Archive ID
		102,      //Message Archive ID
		1013,      //Day Music ID
		1042,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		80,      //Events Archive ID
		0x9,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		124,      //Map Matrix ID
		90,      //Scripts Archive ID
		590,	      //Map Scripts Archive ID
		103,      //Message Archive ID
		1013,      //Day Music ID
		1042,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		81,      //Events Archive ID
		0x9,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		124,      //Map Matrix ID
		91,      //Scripts Archive ID
		591,	      //Map Scripts Archive ID
		104,      //Message Archive ID
		1013,      //Day Music ID
		1042,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		82,      //Events Archive ID
		0x9,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		43,
		0xF,
		248,      //Map Matrix ID
		92,      //Scripts Archive ID
		592,	      //Map Scripts Archive ID
		105,      //Message Archive ID
		1013,      //Day Music ID
		1042,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		83,      //Events Archive ID
		0x9,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0x14,
		0x7B,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x3E8,      //Day Music ID
		0x3E8,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		84,      //Events Archive ID
		0x9,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x9,
		0x3,
		0x0,      //Map Matrix ID
		93,      //Scripts Archive ID
		593,	      //Map Scripts Archive ID
		106,      //Message Archive ID
		1014,      //Day Music ID
		1043,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		85,      //Events Archive ID
		0xA,      //Map Label Text ID
		0x1,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x1,      //Map Type
		0x2,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x16,
		0xF,
		122,      //Map Matrix ID
		94,      //Scripts Archive ID
		594,	      //Map Scripts Archive ID
		107,      //Message Archive ID
		0x442,      //Day Music ID
		0x442,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		86,      //Events Archive ID
		0xA,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1B,
		0xF,
		222,      //Map Matrix ID
		95,      //Scripts Archive ID
		595,	      //Map Scripts Archive ID
		108,      //Message Archive ID
		0x43F,      //Day Music ID
		0x43F,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		87,      //Events Archive ID
		0xA,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1B,
		0xF,
		223,      //Map Matrix ID
		96,      //Scripts Archive ID
		596,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x43F,      //Day Music ID
		0x43F,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		88,      //Events Archive ID
		0xA,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1B,
		0xF,
		224,      //Map Matrix ID
		97,      //Scripts Archive ID
		597,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x43F,      //Day Music ID
		0x43F,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		89,      //Events Archive ID
		0xA,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1B,
		0xF,
		225,      //Map Matrix ID
		98,      //Scripts Archive ID
		598,	      //Map Scripts Archive ID
		109,      //Message Archive ID
		0x43F,      //Day Music ID
		0x43F,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		90,      //Events Archive ID
		0xA,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1B,
		0xF,
		223,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x43F,      //Day Music ID
		0x43F,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		91,      //Events Archive ID
		0xA,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1B,
		0xF,
		224,      //Map Matrix ID
		99,      //Scripts Archive ID
		599,	      //Map Scripts Archive ID
		110,      //Message Archive ID
		0x43F,      //Day Music ID
		0x43F,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		92,      //Events Archive ID
		0xA,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1B,
		0xF,
		223,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x43F,      //Day Music ID
		0x43F,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		93,      //Events Archive ID
		0xA,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1B,
		0xF,
		224,      //Map Matrix ID
		100,      //Scripts Archive ID
		600,	      //Map Scripts Archive ID
		111,      //Message Archive ID
		0x43F,      //Day Music ID
		0x43F,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		94,      //Events Archive ID
		0xA,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1B,
		0xF,
		223,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x43F,      //Day Music ID
		0x43F,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		95,      //Events Archive ID
		0xA,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1B,
		0xF,
		223,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x43F,      //Day Music ID
		0x43F,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		96,      //Events Archive ID
		0xA,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1B,
		0xF,
		223,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x43F,      //Day Music ID
		0x43F,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		97,      //Events Archive ID
		0xA,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1B,
		0xF,
		223,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x43F,      //Day Music ID
		0x43F,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		98,      //Events Archive ID
		0xA,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1B,
		0xF,
		225,      //Map Matrix ID
		101,      //Scripts Archive ID
		601,	      //Map Scripts Archive ID
		112,      //Message Archive ID
		0x43F,      //Day Music ID
		0x43F,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		99,      //Events Archive ID
		0xA,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		0x74,      //Map Matrix ID
		102,      //Scripts Archive ID
		602,	      //Map Scripts Archive ID
		113,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		100,      //Events Archive ID
		0xA,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		0x75,      //Map Matrix ID
		103,      //Scripts Archive ID
		603,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		101,      //Events Archive ID
		0xA,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1F,
		0xF,
		209,      //Map Matrix ID
		105,      //Scripts Archive ID
		605,	      //Map Scripts Archive ID
		114,      //Message Archive ID
		1014,      //Day Music ID
		1043,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		102,      //Events Archive ID
		0xA,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1F,
		0xF,
		210,      //Map Matrix ID
		106,      //Scripts Archive ID
		606,	      //Map Scripts Archive ID
		115,      //Message Archive ID
		1014,      //Day Music ID
		1043,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		103,      //Events Archive ID
		0xA,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		207,      //Map Matrix ID
		107,      //Scripts Archive ID
		607,	      //Map Scripts Archive ID
		0x74,      //Message Archive ID
		1014,      //Day Music ID
		1043,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		104,      //Events Archive ID
		0xA,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		156,      //Map Matrix ID
		108,      //Scripts Archive ID
		608,	      //Map Scripts Archive ID
		0x75,      //Message Archive ID
		1014,      //Day Music ID
		1043,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		105,      //Events Archive ID
		0xA,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1F,
		0xF,
		157,      //Map Matrix ID
		109,      //Scripts Archive ID
		609,	      //Map Scripts Archive ID
		118,      //Message Archive ID
		1014,      //Day Music ID
		1043,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		106,      //Events Archive ID
		0xA,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1F,
		0xF,
		157,      //Map Matrix ID
		110,      //Scripts Archive ID
		610,	      //Map Scripts Archive ID
		119,      //Message Archive ID
		1014,      //Day Music ID
		1043,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		107,      //Events Archive ID
		0xA,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		50,
		0xF,
		258,      //Map Matrix ID
		111,      //Scripts Archive ID
		611,	      //Map Scripts Archive ID
		120,      //Message Archive ID
		1024,      //Day Music ID
		1053,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		108,      //Events Archive ID
		0x17,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		50,
		0xF,
		258,      //Map Matrix ID
		112,      //Scripts Archive ID
		612,	      //Map Scripts Archive ID
		121,      //Message Archive ID
		1025,      //Day Music ID
		1054,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		109,      //Events Archive ID
		0x18,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		50,
		0xF,
		257,      //Map Matrix ID
		113,      //Scripts Archive ID
		613,	      //Map Scripts Archive ID
		122,      //Message Archive ID
		1025,      //Day Music ID
		1054,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		110,      //Events Archive ID
		(0x1B),      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1F,
		0xF,
		209,      //Map Matrix ID
		114,      //Scripts Archive ID
		614,	      //Map Scripts Archive ID
		0x7B,      //Message Archive ID
		1014,      //Day Music ID
		1043,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		111,      //Events Archive ID
		0xA,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1F,
		0xF,
		210,      //Map Matrix ID
		115,      //Scripts Archive ID
		615,	      //Map Scripts Archive ID
		124,      //Message Archive ID
		1014,      //Day Music ID
		1043,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		112,      //Events Archive ID
		0xA,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		207,      //Map Matrix ID
		0x74,      //Scripts Archive ID
		616,	      //Map Scripts Archive ID
		125,      //Message Archive ID
		1014,      //Day Music ID
		1043,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		113,      //Events Archive ID
		0xA,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		43,
		0xF,
		245,      //Map Matrix ID
		0x75,      //Scripts Archive ID
		617,	      //Map Scripts Archive ID
		126,      //Message Archive ID
		1014,      //Day Music ID
		1043,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		114,      //Events Archive ID
		0xA,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		37,
		0xF,
		0xED,      //Map Matrix ID
		118,      //Scripts Archive ID
		618,	      //Map Scripts Archive ID
		127,      //Message Archive ID
		1089,      //Day Music ID
		1089,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		115,      //Events Archive ID
		98,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		32,
		0xF,
		165,      //Map Matrix ID
		119,      //Scripts Archive ID
		619,	      //Map Scripts Archive ID
		128,      //Message Archive ID
		1089,      //Day Music ID
		1089,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x74,      //Events Archive ID
		97,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		32,
		0xF,
		166,      //Map Matrix ID
		120,      //Scripts Archive ID
		620,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1089,      //Day Music ID
		1089,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x75,      //Events Archive ID
		97,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		35,
		0xF,
		167,      //Map Matrix ID
		122,      //Scripts Archive ID
		622,	      //Map Scripts Archive ID
		130,      //Message Archive ID
		1001,      //Day Music ID
		1001,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		118,      //Events Archive ID
		99,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x8,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0xC,
		0x6,
		0x0,      //Map Matrix ID
		0x7B,      //Scripts Archive ID
		623,	      //Map Scripts Archive ID
		131,      //Message Archive ID
		1015,      //Day Music ID
		1044,      //Night Music ID
		0x2,      //Wild Encounters Archive ID
		119,      //Events Archive ID
		0xB,      //Map Label Text ID
		0x1,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x1,      //Map Type
		0x2,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x16,
		0xF,
		206,      //Map Matrix ID
		124,      //Scripts Archive ID
		624,	      //Map Scripts Archive ID
		132,      //Message Archive ID
		0x442,      //Day Music ID
		0x442,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		120,      //Events Archive ID
		0xB,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x17,
		0xF,
		111,      //Map Matrix ID
		125,      //Scripts Archive ID
		0x271,	      //Map Scripts Archive ID
		133,      //Message Archive ID
		0x43F,      //Day Music ID
		0x43F,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		121,      //Events Archive ID
		0xB,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x1,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		0x74,      //Map Matrix ID
		126,      //Scripts Archive ID
		626,	      //Map Scripts Archive ID
		134,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		122,      //Events Archive ID
		0xB,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		0x75,      //Map Matrix ID
		127,      //Scripts Archive ID
		627,	      //Map Scripts Archive ID
		135,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x7B,      //Events Archive ID
		0xB,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		39,
		0xF,
		181,      //Map Matrix ID
		129,      //Scripts Archive ID
		629,	      //Map Scripts Archive ID
		136,      //Message Archive ID
		1015,      //Day Music ID
		1044,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		124,      //Events Archive ID
		0xB,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		39,
		0xF,
		182,      //Map Matrix ID
		130,      //Scripts Archive ID
		630,	      //Map Scripts Archive ID
		137,      //Message Archive ID
		1015,      //Day Music ID
		1044,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		125,      //Events Archive ID
		0xB,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		0x7B,      //Map Matrix ID
		131,      //Scripts Archive ID
		631,	      //Map Scripts Archive ID
		138,      //Message Archive ID
		1015,      //Day Music ID
		1044,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		126,      //Events Archive ID
		0xB,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		0x7B,      //Map Matrix ID
		132,      //Scripts Archive ID
		632,	      //Map Scripts Archive ID
		139,      //Message Archive ID
		1015,      //Day Music ID
		1044,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		127,      //Events Archive ID
		0xB,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		125,      //Map Matrix ID
		133,      //Scripts Archive ID
		633,	      //Map Scripts Archive ID
		140,      //Message Archive ID
		1015,      //Day Music ID
		1044,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		128,      //Events Archive ID
		0xB,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		0x7B,      //Map Matrix ID
		134,      //Scripts Archive ID
		634,	      //Map Scripts Archive ID
		0x8D,      //Message Archive ID
		1015,      //Day Music ID
		1044,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		129,      //Events Archive ID
		0xB,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		0x7B,      //Map Matrix ID
		135,      //Scripts Archive ID
		635,	      //Map Scripts Archive ID
		0x8E,      //Message Archive ID
		1015,      //Day Music ID
		1044,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		130,      //Events Archive ID
		0xB,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		11,
		0x5,
		0x0,      //Map Matrix ID
		136,      //Scripts Archive ID
		636,	      //Map Scripts Archive ID
		143,      //Message Archive ID
		1016,      //Day Music ID
		1045,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		131,      //Events Archive ID
		(0xC),      //Map Label Text ID
		0x1,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x1,      //Map Type
		0x2,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		29,
		0xF,
		115,      //Map Matrix ID
		137,      //Scripts Archive ID
		637,	      //Map Scripts Archive ID
		144,      //Message Archive ID
		0x43F,      //Day Music ID
		0x43F,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		132,      //Events Archive ID
		(0xC),      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0xA,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		0x74,      //Map Matrix ID
		138,      //Scripts Archive ID
		638,	      //Map Scripts Archive ID
		145,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		133,      //Events Archive ID
		(0xC),      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		0x75,      //Map Matrix ID
		139,      //Scripts Archive ID
		639,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		134,      //Events Archive ID
		(0xC),      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x16,
		0xF,
		139,      //Map Matrix ID
		0x8D,      //Scripts Archive ID
		641,	      //Map Scripts Archive ID
		147,      //Message Archive ID
		1091,      //Day Music ID
		1091,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		135,      //Events Archive ID
		102,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x16,
		0xF,
		172,      //Map Matrix ID
		0x8E,      //Scripts Archive ID
		642,	      //Map Scripts Archive ID
		148,      //Message Archive ID
		0x442,      //Day Music ID
		0x442,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		136,      //Events Archive ID
		101,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x16,
		0xF,
		173,      //Map Matrix ID
		143,      //Scripts Archive ID
		643,	      //Map Scripts Archive ID
		149,      //Message Archive ID
		0x442,      //Day Music ID
		0x442,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		137,      //Events Archive ID
		101,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x16,
		0xF,
		174,      //Map Matrix ID
		144,      //Scripts Archive ID
		644,	      //Map Scripts Archive ID
		150,      //Message Archive ID
		0x442,      //Day Music ID
		0x442,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		138,      //Events Archive ID
		101,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x16,
		0xF,
		175,      //Map Matrix ID
		145,      //Scripts Archive ID
		645,	      //Map Scripts Archive ID
		151,      //Message Archive ID
		0x442,      //Day Music ID
		0x442,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		139,      //Events Archive ID
		101,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x16,
		0xF,
		176,      //Map Matrix ID
		146,      //Scripts Archive ID
		646,	      //Map Scripts Archive ID
		152,      //Message Archive ID
		0x442,      //Day Music ID
		0x442,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		140,      //Events Archive ID
		101,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		207,      //Map Matrix ID
		147,      //Scripts Archive ID
		647,	      //Map Scripts Archive ID
		153,      //Message Archive ID
		0x442,      //Day Music ID
		0x442,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x8D,      //Events Archive ID
		101,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1F,
		0xF,
		177,      //Map Matrix ID
		149,      //Scripts Archive ID
		649,	      //Map Scripts Archive ID
		155,      //Message Archive ID
		1016,      //Day Music ID
		1045,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x8E,      //Events Archive ID
		(0xC),      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x16,
		0xF,
		204,      //Map Matrix ID
		150,      //Scripts Archive ID
		650,	      //Map Scripts Archive ID
		156,      //Message Archive ID
		1016,      //Day Music ID
		1045,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		143,      //Events Archive ID
		(0xC),      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		125,      //Map Matrix ID
		151,      //Scripts Archive ID
		651,	      //Map Scripts Archive ID
		157,      //Message Archive ID
		1016,      //Day Music ID
		1045,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		144,      //Events Archive ID
		(0xC),      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		125,      //Map Matrix ID
		152,      //Scripts Archive ID
		652,	      //Map Scripts Archive ID
		158,      //Message Archive ID
		1016,      //Day Music ID
		1045,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		145,      //Events Archive ID
		(0xC),      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		0x7B,      //Map Matrix ID
		153,      //Scripts Archive ID
		653,	      //Map Scripts Archive ID
		159,      //Message Archive ID
		1016,      //Day Music ID
		1045,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		146,      //Events Archive ID
		(0xC),      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		0x7B,      //Map Matrix ID
		154,      //Scripts Archive ID
		654,	      //Map Scripts Archive ID
		160,      //Message Archive ID
		1016,      //Day Music ID
		1045,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		147,      //Events Archive ID
		(0xC),      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		50,
		0xF,
		258,      //Map Matrix ID
		155,      //Scripts Archive ID
		655,	      //Map Scripts Archive ID
		161,      //Message Archive ID
		1026,      //Day Music ID
		1055,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		148,      //Events Archive ID
		30,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0xD,
		0x7,
		0x0,      //Map Matrix ID
		156,      //Scripts Archive ID
		656,	      //Map Scripts Archive ID
		162,      //Message Archive ID
		1017,      //Day Music ID
		1046,      //Night Music ID
		0x3,      //Wild Encounters Archive ID
		149,      //Events Archive ID
		0xD,      //Map Label Text ID
		0x1,      //Map Label Window ID
		0x0,      //Weather
		11,      //Camera Type
		0x1,      //Map Type
		0x2,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		0x74,      //Map Matrix ID
		161,      //Scripts Archive ID
		661,	      //Map Scripts Archive ID
		166,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		150,      //Events Archive ID
		0xD,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		0x75,      //Map Matrix ID
		162,      //Scripts Archive ID
		662,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		151,      //Events Archive ID
		0xD,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x16,
		0xF,
		122,      //Map Matrix ID
		157,      //Scripts Archive ID
		657,	      //Map Scripts Archive ID
		163,      //Message Archive ID
		0x442,      //Day Music ID
		0x442,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		152,      //Events Archive ID
		0xD,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		30,
		0xF,
		226,      //Map Matrix ID
		158,      //Scripts Archive ID
		658,	      //Map Scripts Archive ID
		164,      //Message Archive ID
		0x43F,      //Day Music ID
		0x43F,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		153,      //Events Archive ID
		0xD,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		30,
		0xF,
		227,      //Map Matrix ID
		159,      //Scripts Archive ID
		659,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x43F,      //Day Music ID
		0x43F,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		154,      //Events Archive ID
		0xD,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		30,
		0xF,
		228,      //Map Matrix ID
		160,      //Scripts Archive ID
		660,	      //Map Scripts Archive ID
		165,      //Message Archive ID
		0x43F,      //Day Music ID
		0x43F,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		155,      //Events Archive ID
		0xD,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		38,
		0xF,
		203,      //Map Matrix ID
		164,      //Scripts Archive ID
		664,	      //Map Scripts Archive ID
		167,      //Message Archive ID
		1017,      //Day Music ID
		1046,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		156,      //Events Archive ID
		105,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		243,      //Map Matrix ID
		165,      //Scripts Archive ID
		665,	      //Map Scripts Archive ID
		168,      //Message Archive ID
		1017,      //Day Music ID
		1046,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		157,      //Events Archive ID
		0xD,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		43,
		0xF,
		248,      //Map Matrix ID
		166,      //Scripts Archive ID
		666,	      //Map Scripts Archive ID
		169,      //Message Archive ID
		1017,      //Day Music ID
		1046,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		158,      //Events Archive ID
		0xD,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		243,      //Map Matrix ID
		167,      //Scripts Archive ID
		667,	      //Map Scripts Archive ID
		170,      //Message Archive ID
		1017,      //Day Music ID
		1046,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		159,      //Events Archive ID
		0xD,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		243,      //Map Matrix ID
		168,      //Scripts Archive ID
		668,	      //Map Scripts Archive ID
		171,      //Message Archive ID
		1017,      //Day Music ID
		1046,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		160,      //Events Archive ID
		0xD,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		243,      //Map Matrix ID
		169,      //Scripts Archive ID
		669,	      //Map Scripts Archive ID
		172,      //Message Archive ID
		1017,      //Day Music ID
		1046,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		161,      //Events Archive ID
		0xD,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		125,      //Map Matrix ID
		170,      //Scripts Archive ID
		670,	      //Map Scripts Archive ID
		173,      //Message Archive ID
		1017,      //Day Music ID
		1046,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		162,      //Events Archive ID
		0xD,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		39,
		0xF,
		230,      //Map Matrix ID
		171,      //Scripts Archive ID
		671,	      //Map Scripts Archive ID
		174,      //Message Archive ID
		1017,      //Day Music ID
		1046,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		163,      //Events Archive ID
		104,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0xE,
		0x8,
		0x0,      //Map Matrix ID
		174,      //Scripts Archive ID
		674,	      //Map Scripts Archive ID
		176,      //Message Archive ID
		1018,      //Day Music ID
		1047,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		164,      //Events Archive ID
		(0xE),      //Map Label Text ID
		0x1,      //Map Label Window ID
		36,      //Weather
		0x0,      //Camera Type
		0x1,      //Map Type
		0x5,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x16,
		0xF,
		122,      //Map Matrix ID
		175,      //Scripts Archive ID
		675,	      //Map Scripts Archive ID
		177,      //Message Archive ID
		0x442,      //Day Music ID
		0x442,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		165,      //Events Archive ID
		(0xE),      //Map Label Text ID
		0x1,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1C,
		0xF,
		114,      //Map Matrix ID
		176,      //Scripts Archive ID
		676,	      //Map Scripts Archive ID
		178,      //Message Archive ID
		0x43F,      //Day Music ID
		0x43F,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		166,      //Events Archive ID
		(0xE),      //Map Label Text ID
		0x1,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		0x74,      //Map Matrix ID
		177,      //Scripts Archive ID
		677,	      //Map Scripts Archive ID
		179,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		167,      //Events Archive ID
		(0xE),      //Map Label Text ID
		0x1,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		0x75,      //Map Matrix ID
		178,      //Scripts Archive ID
		678,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		168,      //Events Archive ID
		(0xE),      //Map Label Text ID
		0x1,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		0x7B,      //Map Matrix ID
		180,      //Scripts Archive ID
		680,	      //Map Scripts Archive ID
		180,      //Message Archive ID
		1018,      //Day Music ID
		1047,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		169,      //Events Archive ID
		(0xE),      //Map Label Text ID
		0x1,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		244,      //Map Matrix ID
		181,      //Scripts Archive ID
		681,	      //Map Scripts Archive ID
		181,      //Message Archive ID
		1018,      //Day Music ID
		1047,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		170,      //Events Archive ID
		(0xE),      //Map Label Text ID
		0x1,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0xD,
		0xA,
		0x0,      //Map Matrix ID
		182,      //Scripts Archive ID
		682,	      //Map Scripts Archive ID
		182,      //Message Archive ID
		1019,      //Day Music ID
		1048,      //Night Music ID
		0x4,      //Wild Encounters Archive ID
		171,      //Events Archive ID
		(0xF),      //Map Label Text ID
		0x1,      //Map Label Window ID
		0x8,      //Weather
		11,      //Camera Type
		0x1,      //Map Type
		0x2,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		0x74,      //Map Matrix ID
		183,      //Scripts Archive ID
		683,	      //Map Scripts Archive ID
		183,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		172,      //Events Archive ID
		(0xF),      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		0x75,      //Map Matrix ID
		184,      //Scripts Archive ID
		684,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		173,      //Events Archive ID
		(0xF),      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		144,      //Map Matrix ID
		186,      //Scripts Archive ID
		686,	      //Map Scripts Archive ID
		184,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		174,      //Events Archive ID
		(0xF),      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		36,
		0xF,
		187,      //Map Matrix ID
		187,      //Scripts Archive ID
		687,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1076,      //Day Music ID
		1076,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		175,      //Events Archive ID
		(0xF),      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		36,
		0xF,
		183,      //Map Matrix ID
		188,      //Scripts Archive ID
		688,	      //Map Scripts Archive ID
		185,      //Message Archive ID
		1076,      //Day Music ID
		1076,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		176,      //Events Archive ID
		(0xF),      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		(0xC),      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		36,
		0xF,
		188,      //Map Matrix ID
		189,      //Scripts Archive ID
		689,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1076,      //Day Music ID
		1076,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		177,      //Events Archive ID
		(0xF),      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		36,
		0xF,
		184,      //Map Matrix ID
		190,      //Scripts Archive ID
		690,	      //Map Scripts Archive ID
		186,      //Message Archive ID
		1076,      //Day Music ID
		1076,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		178,      //Events Archive ID
		(0xF),      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0xD,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		36,
		0xF,
		188,      //Map Matrix ID
		191,      //Scripts Archive ID
		691,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1076,      //Day Music ID
		1076,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		179,      //Events Archive ID
		(0xF),      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		36,
		0xF,
		185,      //Map Matrix ID
		192,      //Scripts Archive ID
		692,	      //Map Scripts Archive ID
		187,      //Message Archive ID
		1076,      //Day Music ID
		1076,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		180,      //Events Archive ID
		(0xF),      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		(0xE),      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		36,
		0xF,
		188,      //Map Matrix ID
		193,      //Scripts Archive ID
		693,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1076,      //Day Music ID
		1076,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		181,      //Events Archive ID
		(0xF),      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		36,
		0xF,
		186,      //Map Matrix ID
		194,      //Scripts Archive ID
		694,	      //Map Scripts Archive ID
		188,      //Message Archive ID
		1076,      //Day Music ID
		1076,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		182,      //Events Archive ID
		(0xF),      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		(0xF),      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		36,
		0xF,
		189,      //Map Matrix ID
		195,      //Scripts Archive ID
		695,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1076,      //Day Music ID
		1076,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		183,      //Events Archive ID
		(0xF),      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		36,
		0xF,
		190,      //Map Matrix ID
		196,      //Scripts Archive ID
		696,	      //Map Scripts Archive ID
		189,      //Message Archive ID
		1076,      //Day Music ID
		1076,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		184,      //Events Archive ID
		(0xF),      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x10,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		36,
		0xF,
		192,      //Map Matrix ID
		197,      //Scripts Archive ID
		697,	      //Map Scripts Archive ID
		190,      //Message Archive ID
		1077,      //Day Music ID
		1077,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		185,      //Events Archive ID
		(0xF),      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		36,
		0xF,
		191,      //Map Matrix ID
		198,      //Scripts Archive ID
		698,	      //Map Scripts Archive ID
		191,      //Message Archive ID
		1077,      //Day Music ID
		1077,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		186,      //Events Archive ID
		(0xF),      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x13,
		0xD,
		0x0,      //Map Matrix ID
		201,      //Scripts Archive ID
		701,	      //Map Scripts Archive ID
		192,      //Message Archive ID
		1020,      //Day Music ID
		1049,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		187,      //Events Archive ID
		81,      //Map Label Text ID
		0x1,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x1,      //Map Type
		0x2,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		0x74,      //Map Matrix ID
		203,      //Scripts Archive ID
		703,	      //Map Scripts Archive ID
		194,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		188,      //Events Archive ID
		81,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		0x75,      //Map Matrix ID
		204,      //Scripts Archive ID
		704,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		189,      //Events Archive ID
		81,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x16,
		0xF,
		122,      //Map Matrix ID
		202,      //Scripts Archive ID
		702,	      //Map Scripts Archive ID
		193,      //Message Archive ID
		0x442,      //Day Music ID
		0x442,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		190,      //Events Archive ID
		81,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		44,
		0xF,
		250,      //Map Matrix ID
		206,      //Scripts Archive ID
		706,	      //Map Scripts Archive ID
		195,      //Message Archive ID
		1020,      //Day Music ID
		1049,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		191,      //Events Archive ID
		111,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		50,
		0xF,
		257,      //Map Matrix ID
		207,      //Scripts Archive ID
		707,	      //Map Scripts Archive ID
		196,      //Message Archive ID
		1008,      //Day Music ID
		1037,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		192,      //Events Archive ID
		40,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		0x7B,      //Map Matrix ID
		208,      //Scripts Archive ID
		708,	      //Map Scripts Archive ID
		197,      //Message Archive ID
		1020,      //Day Music ID
		1049,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		193,      //Events Archive ID
		81,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		0x7B,      //Map Matrix ID
		209,      //Scripts Archive ID
		709,	      //Map Scripts Archive ID
		198,      //Message Archive ID
		1020,      //Day Music ID
		1049,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		194,      //Events Archive ID
		81,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		0x7B,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1020,      //Day Music ID
		1049,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		0x0,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		55,
		55,
		0x5,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1062,      //Day Music ID
		1062,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		195,      //Events Archive ID
		46,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0x9,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		55,
		0xF,
		0x5,      //Map Matrix ID
		214,      //Scripts Archive ID
		711,	      //Map Scripts Archive ID
		222,      //Message Archive ID
		0x433,      //Day Music ID
		0x433,      //Night Music ID
		0x5,      //Wild Encounters Archive ID
		196,      //Events Archive ID
		46,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0x9,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		55,
		0xF,
		0x6,      //Map Matrix ID
		215,      //Scripts Archive ID
		712,	      //Map Scripts Archive ID
		223,      //Message Archive ID
		0x433,      //Day Music ID
		0x433,      //Night Music ID
		0x6,      //Wild Encounters Archive ID
		197,      //Events Archive ID
		46,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0x9,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x8,
		0x2,
		0x0,      //Map Matrix ID
		216,      //Scripts Archive ID
		713,	      //Map Scripts Archive ID
		224,      //Message Archive ID
		1023,      //Day Music ID
		1052,      //Night Music ID
		0x7,      //Wild Encounters Archive ID
		198,      //Events Archive ID
		47,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x0,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1F,
		0xF,
		234,      //Map Matrix ID
		217,      //Scripts Archive ID
		714,	      //Map Scripts Archive ID
		225,      //Message Archive ID
		1068,      //Day Music ID
		1068,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		199,      //Events Archive ID
		47,      //Map Label Text ID
		0x9,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x3,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x8,
		0x2,
		0x0,      //Map Matrix ID
		218,      //Scripts Archive ID
		715,	      //Map Scripts Archive ID
		226,      //Message Archive ID
		1023,      //Day Music ID
		1052,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		200,      //Events Archive ID
		48,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x0,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		54,
		0xF,
		0x7,      //Map Matrix ID
		219,      //Scripts Archive ID
		716,	      //Map Scripts Archive ID
		227,      //Message Archive ID
		0x427,      //Day Music ID
		0x427,      //Night Music ID
		0x8,      //Wild Encounters Archive ID
		201,      //Events Archive ID
		48,      //Map Label Text ID
		0x5,      //Map Label Window ID
		0x17,      //Weather
		0x2,      //Camera Type
		0x3,      //Map Type
		0x3,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x8,
		0x2,
		0x0,      //Map Matrix ID
		220,      //Scripts Archive ID
		717,	      //Map Scripts Archive ID
		228,      //Message Archive ID
		1023,      //Day Music ID
		1052,      //Night Music ID
		0x9,      //Wild Encounters Archive ID
		202,      //Events Archive ID
		49,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x0,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		67,
		0xF,
		0x8,      //Map Matrix ID
		221,      //Scripts Archive ID
		718,	      //Map Scripts Archive ID
		229,      //Message Archive ID
		0x433,      //Day Music ID
		0x433,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		203,      //Events Archive ID
		49,      //Map Label Text ID
		0x9,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x3,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x6,
		0x0,
		0x0,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x3E8,      //Day Music ID
		0x3E8,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		0x0,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0x9,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x45,
		0xF,
		0x9,      //Map Matrix ID
		223,      //Scripts Archive ID
		720,	      //Map Scripts Archive ID
		230,      //Message Archive ID
		0x432,      //Day Music ID
		0x432,      //Night Music ID
		0xA,      //Wild Encounters Archive ID
		204,      //Events Archive ID
		0x32,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x45,
		0xF,
		0xA,      //Map Matrix ID
		224,      //Scripts Archive ID
		721,	      //Map Scripts Archive ID
		231,      //Message Archive ID
		0x432,      //Day Music ID
		0x432,      //Night Music ID
		11,      //Wild Encounters Archive ID
		205,      //Events Archive ID
		0x32,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x45,
		0xF,
		11,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x432,      //Day Music ID
		0x432,      //Night Music ID
		0xC,      //Wild Encounters Archive ID
		206,      //Events Archive ID
		0x32,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0xE,
		0x8,
		0xC,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1071,      //Day Music ID
		1071,      //Night Music ID
		0xD,      //Wild Encounters Archive ID
		207,      //Events Archive ID
		0x32,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x6,      //Weather
		0x7,      //Camera Type
		0x2,      //Map Type
		0x5,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0xE,
		0x8,
		0xD,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1071,      //Day Music ID
		1071,      //Night Music ID
		0xE,      //Wild Encounters Archive ID
		208,      //Events Archive ID
		0x32,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x6,      //Weather
		0x6,      //Camera Type
		0x2,      //Map Type
		0x5,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		70,
		0xF,
		0xE,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1071,      //Day Music ID
		1071,      //Night Music ID
		0xF,      //Wild Encounters Archive ID
		209,      //Events Archive ID
		0x32,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x1D,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		70,
		0xF,
		0xF,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1071,      //Day Music ID
		1071,      //Night Music ID
		0x10,      //Wild Encounters Archive ID
		210,      //Events Archive ID
		0x32,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x1D,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		70,
		0xF,
		0x10,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1071,      //Day Music ID
		1071,      //Night Music ID
		0x11,      //Wild Encounters Archive ID
		211,      //Events Archive ID
		0x32,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x1D,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		70,
		0xF,
		0x11,      //Map Matrix ID
		231,      //Scripts Archive ID
		728,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1071,      //Day Music ID
		1071,      //Night Music ID
		0x12,      //Wild Encounters Archive ID
		212,      //Events Archive ID
		0x32,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x1D,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x45,
		0xF,
		0x12,      //Map Matrix ID
		232,      //Scripts Archive ID
		729,	      //Map Scripts Archive ID
		232,      //Message Archive ID
		1071,      //Day Music ID
		1071,      //Night Music ID
		0x13,      //Wild Encounters Archive ID
		213,      //Events Archive ID
		0x32,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x45,
		0xF,
		0x13,      //Map Matrix ID
		233,      //Scripts Archive ID
		730,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x432,      //Day Music ID
		0x432,      //Night Music ID
		0x14,      //Wild Encounters Archive ID
		214,      //Events Archive ID
		0x32,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x45,
		0xF,
		0x14,      //Map Matrix ID
		234,      //Scripts Archive ID
		731,	      //Map Scripts Archive ID
		233,      //Message Archive ID
		0x432,      //Day Music ID
		0x432,      //Night Music ID
		0x15,      //Wild Encounters Archive ID
		215,      //Events Archive ID
		0x32,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x45,
		0xF,
		0x15,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x432,      //Day Music ID
		0x432,      //Night Music ID
		0x16,      //Wild Encounters Archive ID
		216,      //Events Archive ID
		0x32,      //Map Label Text ID
		0x4,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x3C,
		0xF,
		0x16,      //Map Matrix ID
		236,      //Scripts Archive ID
		733,	      //Map Scripts Archive ID
		234,      //Message Archive ID
		0x430,      //Day Music ID
		0x430,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		217,      //Events Archive ID
		0x33,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0xD,      //Weather
		0x5,      //Camera Type
		0x2,      //Map Type
		0x4,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x3C,
		0xF,
		0x17,      //Map Matrix ID
		0xED,      //Scripts Archive ID
		734,	      //Map Scripts Archive ID
		235,      //Message Archive ID
		0x430,      //Day Music ID
		0x430,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		218,      //Events Archive ID
		0x33,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0xD,      //Weather
		0x5,      //Camera Type
		0x2,      //Map Type
		0x4,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0xC,
		0x6,
		0x0,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x3E8,      //Day Music ID
		0x3E8,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		0x0,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0x9,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		63,
		0xF,
		0x18,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x3E8,      //Day Music ID
		0x3E8,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		219,      //Events Archive ID
		0xB,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0xA,
		0x4,
		0x0,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x3E8,      //Day Music ID
		0x3E8,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		0x0,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0x9,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		0x19,      //Map Matrix ID
		249,      //Scripts Archive ID
		746,	      //Map Scripts Archive ID
		246,      //Message Archive ID
		0x427,      //Day Music ID
		0x427,      //Night Music ID
		29,      //Wild Encounters Archive ID
		220,      //Events Archive ID
		53,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x1D,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		0x1A,      //Map Matrix ID
		250,      //Scripts Archive ID
		747,	      //Map Scripts Archive ID
		247,      //Message Archive ID
		0x427,      //Day Music ID
		0x427,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		221,      //Events Archive ID
		53,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x1D,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		40,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x427,      //Day Music ID
		0x427,      //Night Music ID
		30,      //Wild Encounters Archive ID
		222,      //Events Archive ID
		53,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x1D,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		35,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x427,      //Day Music ID
		0x427,      //Night Music ID
		0x1F,      //Wild Encounters Archive ID
		223,      //Events Archive ID
		53,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x1D,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		39,      //Map Matrix ID
		253,      //Scripts Archive ID
		750,	      //Map Scripts Archive ID
		248,      //Message Archive ID
		0x427,      //Day Music ID
		0x427,      //Night Music ID
		32,      //Wild Encounters Archive ID
		224,      //Events Archive ID
		53,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x1D,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		0x1F,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x427,      //Day Music ID
		0x427,      //Night Music ID
		33,      //Wild Encounters Archive ID
		225,      //Events Archive ID
		53,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x1D,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		34,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x427,      //Day Music ID
		0x427,      //Night Music ID
		34,      //Wild Encounters Archive ID
		226,      //Events Archive ID
		53,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x1D,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		0x1F,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x427,      //Day Music ID
		0x427,      //Night Music ID
		35,      //Wild Encounters Archive ID
		227,      //Events Archive ID
		53,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x1D,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		40,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x427,      //Day Music ID
		0x427,      //Night Music ID
		36,      //Wild Encounters Archive ID
		228,      //Events Archive ID
		53,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x1D,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		42,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x427,      //Day Music ID
		0x427,      //Night Music ID
		37,      //Wild Encounters Archive ID
		229,      //Events Archive ID
		53,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x1D,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		35,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x427,      //Day Music ID
		0x427,      //Night Music ID
		38,      //Wild Encounters Archive ID
		230,      //Events Archive ID
		53,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x1D,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		35,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x427,      //Day Music ID
		0x427,      //Night Music ID
		39,      //Wild Encounters Archive ID
		231,      //Events Archive ID
		53,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x1D,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		36,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x427,      //Day Music ID
		0x427,      //Night Music ID
		40,      //Wild Encounters Archive ID
		232,      //Events Archive ID
		53,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x1D,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		34,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x427,      //Day Music ID
		0x427,      //Night Music ID
		41,      //Wild Encounters Archive ID
		233,      //Events Archive ID
		53,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x1D,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		30,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x427,      //Day Music ID
		0x427,      //Night Music ID
		42,      //Wild Encounters Archive ID
		234,      //Events Archive ID
		53,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x1D,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		41,      //Map Matrix ID
		264,      //Scripts Archive ID
		761,	      //Map Scripts Archive ID
		249,      //Message Archive ID
		0x427,      //Day Music ID
		0x427,      //Night Music ID
		43,      //Wild Encounters Archive ID
		235,      //Events Archive ID
		53,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x1D,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		0x1F,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x427,      //Day Music ID
		0x427,      //Night Music ID
		44,      //Wild Encounters Archive ID
		236,      //Events Archive ID
		53,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x1D,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		35,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x427,      //Day Music ID
		0x427,      //Night Music ID
		45,      //Wild Encounters Archive ID
		0xED,      //Events Archive ID
		53,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x1D,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0xE,
		0x8,
		0x0,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x3E8,      //Day Music ID
		0x3E8,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		0x0,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0x9,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		71,
		0xF,
		43,      //Map Matrix ID
		267,      //Scripts Archive ID
		764,	      //Map Scripts Archive ID
		250,      //Message Archive ID
		1062,      //Day Music ID
		1062,      //Night Music ID
		47,      //Wild Encounters Archive ID
		0xEE,      //Events Archive ID
		54,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		71,
		0xF,
		44,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1062,      //Day Music ID
		1062,      //Night Music ID
		48,      //Wild Encounters Archive ID
		0xEF,      //Events Archive ID
		54,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		71,
		0xF,
		45,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1062,      //Day Music ID
		1062,      //Night Music ID
		49,      //Wild Encounters Archive ID
		0xF0,      //Events Archive ID
		54,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		71,
		0xF,
		46,      //Map Matrix ID
		270,      //Scripts Archive ID
		767,	      //Map Scripts Archive ID
		251,      //Message Archive ID
		1062,      //Day Music ID
		1062,      //Night Music ID
		50,      //Wild Encounters Archive ID
		241,      //Events Archive ID
		54,      //Map Label Text ID
		0x4,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		71,
		0xF,
		47,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1062,      //Day Music ID
		1062,      //Night Music ID
		51,      //Wild Encounters Archive ID
		242,      //Events Archive ID
		54,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		71,
		0xF,
		48,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1062,      //Day Music ID
		1062,      //Night Music ID
		52,      //Wild Encounters Archive ID
		243,      //Events Archive ID
		54,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x4,
		0x4,
		49,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x3E8,      //Day Music ID
		0x3E8,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		244,      //Events Archive ID
		0x0,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0x9,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		61,
		0xF,
		49,      //Map Matrix ID
		273,      //Scripts Archive ID
		770,	      //Map Scripts Archive ID
		252,      //Message Archive ID
		1002,      //Day Music ID
		1002,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		245,      //Events Archive ID
		55,      //Map Label Text ID
		0x7,      //Map Label Window ID
		0x0,      //Weather
		0x2,      //Camera Type
		0x2,      //Map Type
		0x0,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x9,
		0x3,
		0x0,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1062,      //Day Music ID
		1062,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		0x0,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0x9,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		59,
		0xF,
		50,      //Map Matrix ID
		274,      //Scripts Archive ID
		771,	      //Map Scripts Archive ID
		253,      //Message Archive ID
		1066,      //Day Music ID
		1066,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		246,      //Events Archive ID
		56,      //Map Label Text ID
		0x7,      //Map Label Window ID
		0x0,      //Weather
		0x2,      //Camera Type
		0x2,      //Map Type
		0x0,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		53,
		0xF,
		51,      //Map Matrix ID
		275,      //Scripts Archive ID
		772,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x432,      //Day Music ID
		0x432,      //Night Music ID
		53,      //Wild Encounters Archive ID
		247,      //Events Archive ID
		0x39,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0x9,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		54,
		54,
		52,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x3E8,      //Day Music ID
		0x3E8,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		248,      //Events Archive ID
		0x0,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0x9,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x8,
		0x2,
		52,      //Map Matrix ID
		0x115,      //Scripts Archive ID
		774,	      //Map Scripts Archive ID
		255,      //Message Archive ID
		1006,      //Day Music ID
		1035,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		249,      //Events Archive ID
		58,      //Map Label Text ID
		0x7,      //Map Label Window ID
		0x0,      //Weather
		0x2,      //Camera Type
		0x3,      //Map Type
		0x3,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		0x7B,      //Map Matrix ID
		0x116,      //Scripts Archive ID
		775,	      //Map Scripts Archive ID
		256,      //Message Archive ID
		1006,      //Day Music ID
		1035,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		250,      //Events Archive ID
		58,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		53,
		0xF,
		0x3,      //Map Matrix ID
		0x117,      //Scripts Archive ID
		776,	      //Map Scripts Archive ID
		257,      //Message Archive ID
		0x432,      //Day Music ID
		0x432,      //Night Music ID
		54,      //Wild Encounters Archive ID
		251,      //Events Archive ID
		59,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0x9,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		53,
		0xF,
		0x4,      //Map Matrix ID
		0x118,      //Scripts Archive ID
		777,	      //Map Scripts Archive ID
		258,      //Message Archive ID
		0x432,      //Day Music ID
		0x432,      //Night Music ID
		55,      //Wild Encounters Archive ID
		252,      //Events Archive ID
		59,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x1,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0x9,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0xF,
		0xF,
		0x0,      //Map Matrix ID
		0x119,      //Scripts Archive ID
		778,	      //Map Scripts Archive ID
		259,      //Message Archive ID
		0x427,      //Day Music ID
		0x427,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		253,      //Events Archive ID
		(0x3C),      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x0,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		54,
		0xF,
		53,      //Map Matrix ID
		0x11A,      //Scripts Archive ID
		779,	      //Map Scripts Archive ID
		260,      //Message Archive ID
		0x427,      //Day Music ID
		0x427,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		254,      //Events Archive ID
		(0x3C),      //Map Label Text ID
		0x5,      //Map Label Window ID
		0x17,      //Weather
		0x2,      //Camera Type
		0x3,      //Map Type
		0x3,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x11,
		0xF,
		0x0,      //Map Matrix ID
		0x11B,      //Scripts Archive ID
		780,	      //Map Scripts Archive ID
		261,      //Message Archive ID
		1008,      //Day Music ID
		1037,      //Night Music ID
		56,      //Wild Encounters Archive ID
		255,      //Events Archive ID
		84,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x9,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x4,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x39,
		0xF,
		0x39,      //Map Matrix ID
		0x11C,      //Scripts Archive ID
		781,	      //Map Scripts Archive ID
		262,      //Message Archive ID
		1073,      //Day Music ID
		1073,      //Night Music ID
		0x39,      //Wild Encounters Archive ID
		256,      //Events Archive ID
		84,      //Map Label Text ID
		0x4,      //Map Label Window ID
		(0x1C),      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x39,
		0xF,
		58,      //Map Matrix ID
		0x11D,      //Scripts Archive ID
		782,	      //Map Scripts Archive ID
		263,      //Message Archive ID
		1073,      //Day Music ID
		1073,      //Night Music ID
		58,      //Wild Encounters Archive ID
		257,      //Events Archive ID
		84,      //Map Label Text ID
		0x4,      //Map Label Window ID
		(0x1C),      //Weather
		0x8,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x39,
		0xF,
		59,      //Map Matrix ID
		0x11E,      //Scripts Archive ID
		783,	      //Map Scripts Archive ID
		264,      //Message Archive ID
		1073,      //Day Music ID
		1073,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		258,      //Events Archive ID
		84,      //Map Label Text ID
		0x4,      //Map Label Window ID
		(0x1C),      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x12,
		0xC,
		0x0,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x3E8,      //Day Music ID
		0x3E8,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		0x0,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0x9,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		62,
		0xF,
		0x3C,      //Map Matrix ID
		288,      //Scripts Archive ID
		785,	      //Map Scripts Archive ID
		265,      //Message Archive ID
		1026,      //Day Music ID
		1055,      //Night Music ID
		59,      //Wild Encounters Archive ID
		259,      //Events Archive ID
		61,      //Map Label Text ID
		0x8,      //Map Label Window ID
		0x8,      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0x3,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		61,      //Map Matrix ID
		289,      //Scripts Archive ID
		786,	      //Map Scripts Archive ID
		266,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		260,      //Events Archive ID
		62,      //Map Label Text ID
		0x4,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		62,      //Map Matrix ID
		290,      //Scripts Archive ID
		787,	      //Map Scripts Archive ID
		267,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		261,      //Events Archive ID
		62,      //Map Label Text ID
		0x4,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		63,      //Map Matrix ID
		291,      //Scripts Archive ID
		788,	      //Map Scripts Archive ID
		268,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		262,      //Events Archive ID
		62,      //Map Label Text ID
		0x4,      //Map Label Window ID
		(0x1B),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		64,      //Map Matrix ID
		292,      //Scripts Archive ID
		789,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		63,      //Wild Encounters Archive ID
		263,      //Events Archive ID
		62,      //Map Label Text ID
		0x4,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		64,      //Map Matrix ID
		293,      //Scripts Archive ID
		790,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		64,      //Wild Encounters Archive ID
		264,      //Events Archive ID
		62,      //Map Label Text ID
		0x4,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		65,      //Map Matrix ID
		294,      //Scripts Archive ID
		791,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		65,      //Wild Encounters Archive ID
		265,      //Events Archive ID
		62,      //Map Label Text ID
		0x4,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0xD,
		0xA,
		0x0,      //Map Matrix ID
		310,      //Scripts Archive ID
		807,	      //Map Scripts Archive ID
		269,      //Message Archive ID
		1006,      //Day Music ID
		1035,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		266,      //Events Archive ID
		63,      //Map Label Text ID
		0x7,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x0,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		0x7B,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x3E8,      //Day Music ID
		0x3E8,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		0x0,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0x9,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		11,
		0x5,
		0x0,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1062,      //Day Music ID
		1062,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		0x0,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0x9,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		11,
		0x5,
		0x0,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1062,      //Day Music ID
		1062,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		0x0,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0x9,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		65,
		0xF,
		68,      //Map Matrix ID
		312,      //Scripts Archive ID
		809,	      //Map Scripts Archive ID
		270,      //Message Archive ID
		0x427,      //Day Music ID
		0x427,      //Night Music ID
		106,      //Wild Encounters Archive ID
		267,      //Events Archive ID
		64,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x1D,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		65,
		0xF,
		0x45,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x427,      //Day Music ID
		0x427,      //Night Music ID
		107,      //Wild Encounters Archive ID
		268,      //Events Archive ID
		64,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x1D,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		65,
		0xF,
		70,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x427,      //Day Music ID
		0x427,      //Night Music ID
		108,      //Wild Encounters Archive ID
		269,      //Events Archive ID
		64,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x1D,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		65,
		0xF,
		71,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x427,      //Day Music ID
		0x427,      //Night Music ID
		109,      //Wild Encounters Archive ID
		270,      //Events Archive ID
		64,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x1D,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		65,
		0xF,
		0x48,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x427,      //Day Music ID
		0x427,      //Night Music ID
		110,      //Wild Encounters Archive ID
		271,      //Events Archive ID
		64,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x1D,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		65,
		0xF,
		73,      //Map Matrix ID
		317,      //Scripts Archive ID
		814,	      //Map Scripts Archive ID
		271,      //Message Archive ID
		0x427,      //Day Music ID
		0x427,      //Night Music ID
		111,      //Wild Encounters Archive ID
		272,      //Events Archive ID
		64,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x1D,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		53,
		0xF,
		0x4A,      //Map Matrix ID
		0x13E,      //Scripts Archive ID
		815,	      //Map Scripts Archive ID
		272,      //Message Archive ID
		0x432,      //Day Music ID
		0x432,      //Night Music ID
		112,      //Wild Encounters Archive ID
		273,      //Events Archive ID
		65,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x10,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		53,
		0xF,
		75,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x432,      //Day Music ID
		0x432,      //Night Music ID
		113,      //Wild Encounters Archive ID
		274,      //Events Archive ID
		65,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		53,
		0xF,
		76,      //Map Matrix ID
		0x140,      //Scripts Archive ID
		817,	      //Map Scripts Archive ID
		273,      //Message Archive ID
		0x433,      //Day Music ID
		0x433,      //Night Music ID
		114,      //Wild Encounters Archive ID
		275,      //Events Archive ID
		66,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x1D,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0xC,
		0xF,
		79,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1025,      //Day Music ID
		1054,      //Night Music ID
		0x75,      //Wild Encounters Archive ID
		0x114,      //Events Archive ID
		68,      //Map Label Text ID
		0x7,      //Map Label Window ID
		0x0,      //Weather
		0x2,      //Camera Type
		0x2,      //Map Type
		0x3,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0xF,
		0xF,
		0x0,      //Map Matrix ID
		0x144,      //Scripts Archive ID
		821,	      //Map Scripts Archive ID
		0x114,      //Message Archive ID
		1022,      //Day Music ID
		1051,      //Night Music ID
		118,      //Wild Encounters Archive ID
		0x115,      //Events Archive ID
		0x45,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x8,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x0,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x48,
		0xF,
		80,      //Map Matrix ID
		325,      //Scripts Archive ID
		822,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x433,      //Day Music ID
		0x433,      //Night Music ID
		119,      //Wild Encounters Archive ID
		0x116,      //Events Archive ID
		0x45,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0xD,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x48,
		0xF,
		81,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x433,      //Day Music ID
		0x433,      //Night Music ID
		120,      //Wild Encounters Archive ID
		0x117,      //Events Archive ID
		0x45,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0xD,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x48,
		0xF,
		82,      //Map Matrix ID
		327,      //Scripts Archive ID
		824,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x433,      //Day Music ID
		0x433,      //Night Music ID
		121,      //Wild Encounters Archive ID
		0x118,      //Events Archive ID
		0x45,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0xD,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x48,
		0xF,
		83,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x433,      //Day Music ID
		0x433,      //Night Music ID
		122,      //Wild Encounters Archive ID
		0x119,      //Events Archive ID
		0x45,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0xD,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x48,
		0xF,
		84,      //Map Matrix ID
		329,      //Scripts Archive ID
		826,	      //Map Scripts Archive ID
		0x115,      //Message Archive ID
		0x433,      //Day Music ID
		0x433,      //Night Music ID
		0x7B,      //Wild Encounters Archive ID
		0x11A,      //Events Archive ID
		0x45,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0xD,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x48,
		0xF,
		85,      //Map Matrix ID
		330,      //Scripts Archive ID
		827,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x433,      //Day Music ID
		0x433,      //Night Music ID
		124,      //Wild Encounters Archive ID
		0x11B,      //Events Archive ID
		0x45,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0xD,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		66,
		0xF,
		86,      //Map Matrix ID
		332,      //Scripts Archive ID
		829,	      //Map Scripts Archive ID
		0x117,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		125,      //Wild Encounters Archive ID
		0x11C,      //Events Archive ID
		70,      //Map Label Text ID
		0x9,      //Map Label Window ID
		(0x1B),      //Weather
		0x4,      //Camera Type
		0x3,      //Map Type
		0x8,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		66,
		0xF,
		87,      //Map Matrix ID
		333,      //Scripts Archive ID
		830,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		126,      //Wild Encounters Archive ID
		0x11D,      //Events Archive ID
		70,      //Map Label Text ID
		0x9,      //Map Label Window ID
		(0x1B),      //Weather
		0x4,      //Camera Type
		0x3,      //Map Type
		0x8,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		66,
		0xF,
		88,      //Map Matrix ID
		334,      //Scripts Archive ID
		831,	      //Map Scripts Archive ID
		0x118,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		127,      //Wild Encounters Archive ID
		0x11E,      //Events Archive ID
		70,      //Map Label Text ID
		0x9,      //Map Label Window ID
		(0x1B),      //Weather
		0x4,      //Camera Type
		0x3,      //Map Type
		0x8,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		66,
		0xF,
		89,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		128,      //Wild Encounters Archive ID
		0x11F,      //Events Archive ID
		70,      //Map Label Text ID
		0x9,      //Map Label Window ID
		(0x1B),      //Weather
		0x4,      //Camera Type
		0x3,      //Map Type
		0x8,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		66,
		0xF,
		90,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		129,      //Wild Encounters Archive ID
		288,      //Events Archive ID
		70,      //Map Label Text ID
		0x9,      //Map Label Window ID
		(0x1B),      //Weather
		0x4,      //Camera Type
		0x3,      //Map Type
		0x8,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		66,
		0xF,
		91,      //Map Matrix ID
		337,      //Scripts Archive ID
		834,	      //Map Scripts Archive ID
		0x119,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		130,      //Wild Encounters Archive ID
		289,      //Events Archive ID
		70,      //Map Label Text ID
		0x9,      //Map Label Window ID
		(0x1B),      //Weather
		0x4,      //Camera Type
		0x3,      //Map Type
		0x8,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		66,
		0xF,
		92,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		131,      //Wild Encounters Archive ID
		290,      //Events Archive ID
		70,      //Map Label Text ID
		0x9,      //Map Label Window ID
		(0x1B),      //Weather
		0x4,      //Camera Type
		0x3,      //Map Type
		0x8,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		66,
		0xF,
		93,      //Map Matrix ID
		339,      //Scripts Archive ID
		836,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		132,      //Wild Encounters Archive ID
		291,      //Events Archive ID
		70,      //Map Label Text ID
		0x9,      //Map Label Window ID
		(0x1B),      //Weather
		0x4,      //Camera Type
		0x3,      //Map Type
		0x8,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		66,
		0xF,
		94,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		133,      //Wild Encounters Archive ID
		292,      //Events Archive ID
		70,      //Map Label Text ID
		0x9,      //Map Label Window ID
		(0x1B),      //Weather
		0x4,      //Camera Type
		0x3,      //Map Type
		0x8,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1F,
		0x1F,
		157,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x3E8,      //Day Music ID
		0x3E8,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		0x0,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0x9,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		58,
		0xF,
		95,      //Map Matrix ID
		341,      //Scripts Archive ID
		838,	      //Map Scripts Archive ID
		0x11A,      //Message Archive ID
		1068,      //Day Music ID
		1068,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		293,      //Events Archive ID
		71,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		58,
		0xF,
		96,      //Map Matrix ID
		342,      //Scripts Archive ID
		839,	      //Map Scripts Archive ID
		0x11B,      //Message Archive ID
		1067,      //Day Music ID
		1067,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		294,      //Events Archive ID
		71,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		58,
		0xF,
		97,      //Map Matrix ID
		343,      //Scripts Archive ID
		840,	      //Map Scripts Archive ID
		0x11C,      //Message Archive ID
		1067,      //Day Music ID
		1067,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		295,      //Events Archive ID
		71,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		58,
		0xF,
		98,      //Map Matrix ID
		344,      //Scripts Archive ID
		841,	      //Map Scripts Archive ID
		0x11D,      //Message Archive ID
		1067,      //Day Music ID
		1067,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		296,      //Events Archive ID
		71,      //Map Label Text ID
		0x6,      //Map Label Window ID
		(0x1A),      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		58,
		0xF,
		100,      //Map Matrix ID
		345,      //Scripts Archive ID
		842,	      //Map Scripts Archive ID
		0x11E,      //Message Archive ID
		1067,      //Day Music ID
		1067,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		297,      //Events Archive ID
		71,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		58,
		0xF,
		99,      //Map Matrix ID
		346,      //Scripts Archive ID
		843,	      //Map Scripts Archive ID
		0x11F,      //Message Archive ID
		1067,      //Day Music ID
		1067,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		298,      //Events Archive ID
		71,      //Map Label Text ID
		0x6,      //Map Label Window ID
		(0x1A),      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		62,
		0xF,
		101,      //Map Matrix ID
		351,      //Scripts Archive ID
		848,	      //Map Scripts Archive ID
		291,      //Message Archive ID
		1070,      //Day Music ID
		1070,      //Night Music ID
		134,      //Wild Encounters Archive ID
		299,      //Events Archive ID
		76,      //Map Label Text ID
		0x8,      //Map Label Window ID
		0x0,      //Weather
		0x2,      //Camera Type
		0x3,      //Map Type
		0x3,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		62,
		0xF,
		102,      //Map Matrix ID
		352,      //Scripts Archive ID
		849,	      //Map Scripts Archive ID
		292,      //Message Archive ID
		1068,      //Day Music ID
		1068,      //Night Music ID
		135,      //Wild Encounters Archive ID
		300,      //Events Archive ID
		76,      //Map Label Text ID
		0x8,      //Map Label Window ID
		0x0,      //Weather
		0x2,      //Camera Type
		0x3,      //Map Type
		0x3,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		53,
		0xF,
		103,      //Map Matrix ID
		353,      //Scripts Archive ID
		850,	      //Map Scripts Archive ID
		293,      //Message Archive ID
		1065,      //Day Music ID
		1065,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		301,      //Events Archive ID
		87,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		62,
		0xF,
		104,      //Map Matrix ID
		355,      //Scripts Archive ID
		852,	      //Map Scripts Archive ID
		294,      //Message Archive ID
		1068,      //Day Music ID
		1068,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		302,      //Events Archive ID
		77,      //Map Label Text ID
		0x8,      //Map Label Window ID
		0x0,      //Weather
		0x2,      //Camera Type
		0x3,      //Map Type
		0x4,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		62,
		0xF,
		105,      //Map Matrix ID
		356,      //Scripts Archive ID
		853,	      //Map Scripts Archive ID
		295,      //Message Archive ID
		1070,      //Day Music ID
		1070,      //Night Music ID
		136,      //Wild Encounters Archive ID
		303,      //Events Archive ID
		77,      //Map Label Text ID
		0x8,      //Map Label Window ID
		0x0,      //Weather
		0x2,      //Camera Type
		0x3,      //Map Type
		0x3,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		53,
		0xF,
		106,      //Map Matrix ID
		357,      //Scripts Archive ID
		854,	      //Map Scripts Archive ID
		296,      //Message Archive ID
		1068,      //Day Music ID
		1068,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		304,      //Events Archive ID
		88,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0xE,
		0xF,
		107,      //Map Matrix ID
		359,      //Scripts Archive ID
		856,	      //Map Scripts Archive ID
		297,      //Message Archive ID
		1070,      //Day Music ID
		1070,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		305,      //Events Archive ID
		78,      //Map Label Text ID
		0x8,      //Map Label Window ID
		0x0,      //Weather
		0xF,      //Camera Type
		0x3,      //Map Type
		0x5,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0xE,
		0xF,
		108,      //Map Matrix ID
		360,      //Scripts Archive ID
		857,	      //Map Scripts Archive ID
		298,      //Message Archive ID
		1068,      //Day Music ID
		1068,      //Night Music ID
		137,      //Wild Encounters Archive ID
		306,      //Events Archive ID
		78,      //Map Label Text ID
		0x8,      //Map Label Window ID
		0x0,      //Weather
		0xF,      //Camera Type
		0x3,      //Map Type
		0x5,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		53,
		0xF,
		109,      //Map Matrix ID
		361,      //Scripts Archive ID
		858,	      //Map Scripts Archive ID
		299,      //Message Archive ID
		1065,      //Day Music ID
		1065,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		307,      //Events Archive ID
		89,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0xF,
		0x9,
		0x0,      //Map Matrix ID
		362,      //Scripts Archive ID
		859,	      //Map Scripts Archive ID
		300,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		308,      //Events Archive ID
		79,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0x0,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		54,
		0xF,
		110,      //Map Matrix ID
		363,      //Scripts Archive ID
		860,	      //Map Scripts Archive ID
		301,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		309,      //Events Archive ID
		79,      //Map Label Text ID
		0x5,      //Map Label Window ID
		0x17,      //Weather
		0x2,      //Camera Type
		0x3,      //Map Type
		0x3,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		64,
		0xF,
		229,      //Map Matrix ID
		364,      //Scripts Archive ID
		861,	      //Map Scripts Archive ID
		302,      //Message Archive ID
		1020,      //Day Music ID
		1049,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		310,      //Events Archive ID
		111,      //Map Label Text ID
		0x7,      //Map Label Window ID
		0x0,      //Weather
		0x2,      //Camera Type
		0x1,      //Map Type
		0x2,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		41,
		0xF,
		231,      //Map Matrix ID
		365,      //Scripts Archive ID
		862,	      //Map Scripts Archive ID
		303,      //Message Archive ID
		1020,      //Day Music ID
		1049,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		311,      //Events Archive ID
		111,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		33,
		0xF,
		232,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x3E8,      //Day Music ID
		0x3E8,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		0x0,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		33,
		0xF,
		233,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x3E8,      //Day Music ID
		0x3E8,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		0x0,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		33,
		0xF,
		193,      //Map Matrix ID
		367,      //Scripts Archive ID
		864,	      //Map Scripts Archive ID
		304,      //Message Archive ID
		1092,      //Day Music ID
		1092,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		312,      //Events Archive ID
		80,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		207,      //Map Matrix ID
		368,      //Scripts Archive ID
		865,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1092,      //Day Music ID
		1092,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		313,      //Events Archive ID
		80,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		33,
		0xF,
		194,      //Map Matrix ID
		369,      //Scripts Archive ID
		866,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1092,      //Day Music ID
		1092,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		314,      //Events Archive ID
		80,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		33,
		0xF,
		195,      //Map Matrix ID
		370,      //Scripts Archive ID
		867,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1092,      //Day Music ID
		1092,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		315,      //Events Archive ID
		80,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		33,
		0xF,
		197,      //Map Matrix ID
		371,      //Scripts Archive ID
		868,	      //Map Scripts Archive ID
		305,      //Message Archive ID
		1092,      //Day Music ID
		1092,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		316,      //Events Archive ID
		80,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		33,
		0xF,
		198,      //Map Matrix ID
		372,      //Scripts Archive ID
		869,	      //Map Scripts Archive ID
		306,      //Message Archive ID
		1092,      //Day Music ID
		1092,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		317,      //Events Archive ID
		80,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x5,
		0xE,
		118,      //Map Matrix ID
		398,      //Scripts Archive ID
		894,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x13E,      //Events Archive ID
		0x0,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x5,
		0xE,
		121,      //Map Matrix ID
		399,      //Scripts Archive ID
		895,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x13F,      //Events Archive ID
		0x0,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x6,
		0x0,
		0x0,      //Map Matrix ID
		414,      //Scripts Archive ID
		901,	      //Map Scripts Archive ID
		399,      //Message Archive ID
		1021,      //Day Music ID
		1050,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x140,      //Events Archive ID
		0x48,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x0,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0x14,
		0x7B,      //Map Matrix ID
		415,      //Scripts Archive ID
		902,	      //Map Scripts Archive ID
		400,      //Message Archive ID
		1021,      //Day Music ID
		1050,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x141,      //Events Archive ID
		0x48,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x12,
		0xC,
		0x0,      //Map Matrix ID
		416,      //Scripts Archive ID
		903,	      //Map Scripts Archive ID
		0x191,      //Message Archive ID
		1009,      //Day Music ID
		1038,      //Night Music ID
		138,      //Wild Encounters Archive ID
		0x142,      //Events Archive ID
		73,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x0,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		35,
		0xF,
		147,      //Map Matrix ID
		417,      //Scripts Archive ID
		904,	      //Map Scripts Archive ID
		402,      //Message Archive ID
		1009,      //Day Music ID
		1038,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x143,      //Events Archive ID
		110,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x8,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		35,
		0xF,
		146,      //Map Matrix ID
		418,      //Scripts Archive ID
		905,	      //Map Scripts Archive ID
		403,      //Message Archive ID
		1009,      //Day Music ID
		1038,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x144,      //Events Archive ID
		109,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x8,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		35,
		0xF,
		146,      //Map Matrix ID
		419,      //Scripts Archive ID
		906,	      //Map Scripts Archive ID
		404,      //Message Archive ID
		1009,      //Day Music ID
		1038,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		325,      //Events Archive ID
		109,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x8,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0xE,
		0x8,
		0x0,      //Map Matrix ID
		420,      //Scripts Archive ID
		907,	      //Map Scripts Archive ID
		405,      //Message Archive ID
		1027,      //Day Music ID
		1056,      //Night Music ID
		139,      //Wild Encounters Archive ID
		326,      //Events Archive ID
		(0x4A),      //Map Label Text ID
		0x3,      //Map Label Window ID
		35,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x5,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x12,
		0xC,
		0x0,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1026,      //Day Music ID
		1055,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		327,      //Events Archive ID
		75,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x0,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x6,
		0x0,
		0x0,      //Map Matrix ID
		427,      //Scripts Archive ID
		909,	      //Map Scripts Archive ID
		466,      //Message Archive ID
		1021,      //Day Music ID
		1050,      //Night Music ID
		140,      //Wild Encounters Archive ID
		328,      //Events Archive ID
		0x10,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x0,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x6,
		0x0,
		0x0,      //Map Matrix ID
		428,      //Scripts Archive ID
		910,	      //Map Scripts Archive ID
		467,      //Message Archive ID
		1021,      //Day Music ID
		1050,      //Night Music ID
		0x8D,      //Wild Encounters Archive ID
		329,      //Events Archive ID
		0x11,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x0,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x6,
		0x0,
		0x0,      //Map Matrix ID
		429,      //Scripts Archive ID
		911,	      //Map Scripts Archive ID
		468,      //Message Archive ID
		1022,      //Day Music ID
		1051,      //Night Music ID
		0x8E,      //Wild Encounters Archive ID
		330,      //Events Archive ID
		0x12,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x0,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x6,
		0x0,
		0x0,      //Map Matrix ID
		430,      //Scripts Archive ID
		912,	      //Map Scripts Archive ID
		469,      //Message Archive ID
		1022,      //Day Music ID
		1051,      //Night Music ID
		143,      //Wild Encounters Archive ID
		331,      //Events Archive ID
		0x13,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x0,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x8,
		0x2,
		0x0,      //Map Matrix ID
		431,      //Scripts Archive ID
		913,	      //Map Scripts Archive ID
		470,      //Message Archive ID
		1022,      //Day Music ID
		1051,      //Night Music ID
		144,      //Wild Encounters Archive ID
		332,      //Events Archive ID
		0x13,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x0,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x8,
		0x2,
		0x0,      //Map Matrix ID
		432,      //Scripts Archive ID
		914,	      //Map Scripts Archive ID
		471,      //Message Archive ID
		1023,      //Day Music ID
		1052,      //Night Music ID
		145,      //Wild Encounters Archive ID
		333,      //Events Archive ID
		0x14,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x4,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		243,      //Map Matrix ID
		433,      //Scripts Archive ID
		915,	      //Map Scripts Archive ID
		472,      //Message Archive ID
		1023,      //Day Music ID
		1052,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		334,      //Events Archive ID
		0x14,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x8,
		0x2,
		0x0,      //Map Matrix ID
		434,      //Scripts Archive ID
		916,	      //Map Scripts Archive ID
		473,      //Message Archive ID
		1023,      //Day Music ID
		1052,      //Night Music ID
		146,      //Wild Encounters Archive ID
		335,      //Events Archive ID
		0x14,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x0,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x7,
		0x1,
		0x0,      //Map Matrix ID
		435,      //Scripts Archive ID
		917,	      //Map Scripts Archive ID
		474,      //Message Archive ID
		1024,      //Day Music ID
		1053,      //Night Music ID
		147,      //Wild Encounters Archive ID
		336,      //Events Archive ID
		0x15,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x8,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x0,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		50,
		0xF,
		260,      //Map Matrix ID
		436,      //Scripts Archive ID
		918,	      //Map Scripts Archive ID
		475,      //Message Archive ID
		1024,      //Day Music ID
		1053,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		337,      //Events Archive ID
		0x15,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1F,
		0x1F,
		157,      //Map Matrix ID
		437,      //Scripts Archive ID
		919,	      //Map Scripts Archive ID
		476,      //Message Archive ID
		0x3E8,      //Day Music ID
		0x3E8,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		338,      //Events Archive ID
		0x0,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x7,
		0x1,
		0x0,      //Map Matrix ID
		438,      //Scripts Archive ID
		920,	      //Map Scripts Archive ID
		477,      //Message Archive ID
		1024,      //Day Music ID
		1053,      //Night Music ID
		148,      //Wild Encounters Archive ID
		339,      //Events Archive ID
		0x16,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x4,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x9,
		0x3,
		0x0,      //Map Matrix ID
		439,      //Scripts Archive ID
		921,	      //Map Scripts Archive ID
		478,      //Message Archive ID
		1024,      //Day Music ID
		1053,      //Night Music ID
		149,      //Wild Encounters Archive ID
		340,      //Events Archive ID
		0x17,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x8,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x4,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		43,
		0xF,
		249,      //Map Matrix ID
		440,      //Scripts Archive ID
		922,	      //Map Scripts Archive ID
		479,      //Message Archive ID
		1024,      //Day Music ID
		1053,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		341,      //Events Archive ID
		0x17,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0xA,
		0x4,
		0x0,      //Map Matrix ID
		441,      //Scripts Archive ID
		923,	      //Map Scripts Archive ID
		480,      //Message Archive ID
		1025,      //Day Music ID
		1054,      //Night Music ID
		150,      //Wild Encounters Archive ID
		342,      //Events Archive ID
		0x18,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x0,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		42,
		0xF,
		212,      //Map Matrix ID
		442,      //Scripts Archive ID
		924,	      //Map Scripts Archive ID
		481,      //Message Archive ID
		0x427,      //Day Music ID
		0x427,      //Night Music ID
		151,      //Wild Encounters Archive ID
		343,      //Events Archive ID
		0x18,      //Map Label Text ID
		0x3,      //Map Label Window ID
		(0x1B),      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x8,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		42,
		0xF,
		213,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x427,      //Day Music ID
		0x427,      //Night Music ID
		152,      //Wild Encounters Archive ID
		344,      //Events Archive ID
		0x18,      //Map Label Text ID
		0x3,      //Map Label Window ID
		(0x1B),      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x8,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		42,
		0xF,
		214,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x427,      //Day Music ID
		0x427,      //Night Music ID
		153,      //Wild Encounters Archive ID
		345,      //Events Archive ID
		0x18,      //Map Label Text ID
		0x3,      //Map Label Window ID
		(0xE),      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x8,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		42,
		0xF,
		215,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x427,      //Day Music ID
		0x427,      //Night Music ID
		154,      //Wild Encounters Archive ID
		346,      //Events Archive ID
		0x18,      //Map Label Text ID
		0x3,      //Map Label Window ID
		(0xE),      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x8,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		42,
		0xF,
		216,      //Map Matrix ID
		446,      //Scripts Archive ID
		928,	      //Map Scripts Archive ID
		482,      //Message Archive ID
		0x427,      //Day Music ID
		0x427,      //Night Music ID
		155,      //Wild Encounters Archive ID
		347,      //Events Archive ID
		0x18,      //Map Label Text ID
		0x3,      //Map Label Window ID
		(0xE),      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x8,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0xA,
		0x4,
		0x0,      //Map Matrix ID
		447,      //Scripts Archive ID
		929,	      //Map Scripts Archive ID
		483,      //Message Archive ID
		1026,      //Day Music ID
		1055,      //Night Music ID
		156,      //Wild Encounters Archive ID
		348,      //Events Archive ID
		0x19,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x0,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0xA,
		0x4,
		0x0,      //Map Matrix ID
		449,      //Scripts Archive ID
		931,	      //Map Scripts Archive ID
		485,      //Message Archive ID
		1026,      //Day Music ID
		1055,      //Night Music ID
		157,      //Wild Encounters Archive ID
		349,      //Events Archive ID
		0x19,      //Map Label Text ID
		0x3,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x4,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		0x7B,      //Map Matrix ID
		450,      //Scripts Archive ID
		932,	      //Map Scripts Archive ID
		486,      //Message Archive ID
		1026,      //Day Music ID
		1055,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		350,      //Events Archive ID
		0x19,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x8,
		0x2,
		0x0,      //Map Matrix ID
		451,      //Scripts Archive ID
		933,	      //Map Scripts Archive ID
		487,      //Message Archive ID
		1023,      //Day Music ID
		1052,      //Night Music ID
		158,      //Wild Encounters Archive ID
		351,      //Events Archive ID
		(0x1A),      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x4,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0xA,
		0x4,
		0x0,      //Map Matrix ID
		452,      //Scripts Archive ID
		934,	      //Map Scripts Archive ID
		488,      //Message Archive ID
		1026,      //Day Music ID
		1055,      //Night Music ID
		159,      //Wild Encounters Archive ID
		352,      //Events Archive ID
		(0x1A),      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x4,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0xC,
		0x6,
		0x0,      //Map Matrix ID
		453,      //Scripts Archive ID
		935,	      //Map Scripts Archive ID
		489,      //Message Archive ID
		1025,      //Day Music ID
		1054,      //Night Music ID
		160,      //Wild Encounters Archive ID
		353,      //Events Archive ID
		(0x1B),      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x0,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		35,
		0xF,
		178,      //Map Matrix ID
		454,      //Scripts Archive ID
		936,	      //Map Scripts Archive ID
		490,      //Message Archive ID
		1025,      //Day Music ID
		1054,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		354,      //Events Archive ID
		106,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x8,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		35,
		0xF,
		179,      //Map Matrix ID
		455,      //Scripts Archive ID
		937,	      //Map Scripts Archive ID
		491,      //Message Archive ID
		1025,      //Day Music ID
		1054,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		355,      //Events Archive ID
		106,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x8,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		35,
		0xF,
		180,      //Map Matrix ID
		456,      //Scripts Archive ID
		938,	      //Map Scripts Archive ID
		492,      //Message Archive ID
		1025,      //Day Music ID
		1054,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		356,      //Events Archive ID
		106,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x8,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0xC,
		0x6,
		0x0,      //Map Matrix ID
		457,      //Scripts Archive ID
		939,	      //Map Scripts Archive ID
		493,      //Message Archive ID
		1025,      //Day Music ID
		1054,      //Night Music ID
		161,      //Wild Encounters Archive ID
		357,      //Events Archive ID
		(0x1B),      //Map Label Text ID
		0x3,      //Map Label Window ID
		32,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x0,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		244,      //Map Matrix ID
		458,      //Scripts Archive ID
		940,	      //Map Scripts Archive ID
		494,      //Message Archive ID
		1025,      //Day Music ID
		1054,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		358,      //Events Archive ID
		(0x1B),      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x12,
		0xC,
		0x0,      //Map Matrix ID
		459,      //Scripts Archive ID
		941,	      //Map Scripts Archive ID
		495,      //Message Archive ID
		1009,      //Day Music ID
		1038,      //Night Music ID
		162,      //Wild Encounters Archive ID
		359,      //Events Archive ID
		(0x1C),      //Map Label Text ID
		0x3,      //Map Label Window ID
		33,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x1,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		50,
		0xF,
		258,      //Map Matrix ID
		460,      //Scripts Archive ID
		942,	      //Map Scripts Archive ID
		496,      //Message Archive ID
		1009,      //Day Music ID
		1038,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		360,      //Events Archive ID
		(0x1C),      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		43,
		0xF,
		247,      //Map Matrix ID
		461,      //Scripts Archive ID
		943,	      //Map Scripts Archive ID
		497,      //Message Archive ID
		1009,      //Day Music ID
		1038,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		361,      //Events Archive ID
		107,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x8,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		35,
		0xF,
		145,      //Map Matrix ID
		462,      //Scripts Archive ID
		944,	      //Map Scripts Archive ID
		498,      //Message Archive ID
		1009,      //Day Music ID
		1038,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		362,      //Events Archive ID
		109,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x8,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		35,
		0xF,
		146,      //Map Matrix ID
		463,      //Scripts Archive ID
		945,	      //Map Scripts Archive ID
		499,      //Message Archive ID
		1009,      //Day Music ID
		1038,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		363,      //Events Archive ID
		109,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x8,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		35,
		0xF,
		146,      //Map Matrix ID
		464,      //Scripts Archive ID
		946,	      //Map Scripts Archive ID
		500,      //Message Archive ID
		1009,      //Day Music ID
		1038,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		364,      //Events Archive ID
		109,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x8,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		35,
		0xF,
		146,      //Map Matrix ID
		465,      //Scripts Archive ID
		947,	      //Map Scripts Archive ID
		501,      //Message Archive ID
		1009,      //Day Music ID
		1038,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		365,      //Events Archive ID
		109,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x8,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x12,
		0xC,
		0x0,      //Map Matrix ID
		466,      //Scripts Archive ID
		948,	      //Map Scripts Archive ID
		0x1F6,      //Message Archive ID
		1026,      //Day Music ID
		1055,      //Night Music ID
		163,      //Wild Encounters Archive ID
		366,      //Events Archive ID
		0x1D,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x4,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		50,
		0xF,
		257,      //Map Matrix ID
		467,      //Scripts Archive ID
		949,	      //Map Scripts Archive ID
		503,      //Message Archive ID
		1026,      //Day Music ID
		1055,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		367,      //Events Archive ID
		0x1D,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0xA,
		0x4,
		0x0,      //Map Matrix ID
		468,      //Scripts Archive ID
		950,	      //Map Scripts Archive ID
		0x1F8,      //Message Archive ID
		1026,      //Day Music ID
		1055,      //Night Music ID
		164,      //Wild Encounters Archive ID
		368,      //Events Archive ID
		30,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x2,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x3,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0xE,
		0x8,
		0x0,      //Map Matrix ID
		469,      //Scripts Archive ID
		951,	      //Map Scripts Archive ID
		0x1F9,      //Message Archive ID
		1027,      //Day Music ID
		1056,      //Night Music ID
		165,      //Wild Encounters Archive ID
		369,      //Events Archive ID
		(0x1F),      //Map Label Text ID
		0x3,      //Map Label Window ID
		34,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x5,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		243,      //Map Matrix ID
		470,      //Scripts Archive ID
		952,	      //Map Scripts Archive ID
		0x1FA,      //Message Archive ID
		1027,      //Day Music ID
		1056,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		370,      //Events Archive ID
		(0x1F),      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0xE,
		0x8,
		0x0,      //Map Matrix ID
		471,      //Scripts Archive ID
		953,	      //Map Scripts Archive ID
		507,      //Message Archive ID
		1027,      //Day Music ID
		1056,      //Night Music ID
		166,      //Wild Encounters Archive ID
		371,      //Events Archive ID
		32,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x7,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x5,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		124,      //Map Matrix ID
		472,      //Scripts Archive ID
		954,	      //Map Scripts Archive ID
		0x1FC,      //Message Archive ID
		1027,      //Day Music ID
		1056,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		372,      //Events Archive ID
		32,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		124,      //Map Matrix ID
		473,      //Scripts Archive ID
		955,	      //Map Scripts Archive ID
		0x1FD,      //Message Archive ID
		1027,      //Day Music ID
		1056,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		373,      //Events Archive ID
		32,      //Map Label Text ID
		0x3,      //Map Label Window ID
		30,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0xF,
		0x9,
		0x0,      //Map Matrix ID
		474,      //Scripts Archive ID
		956,	      //Map Scripts Archive ID
		510,      //Message Archive ID
		1022,      //Day Music ID
		1051,      //Night Music ID
		167,      //Wild Encounters Archive ID
		374,      //Events Archive ID
		33,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x0,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		50,
		0xF,
		258,      //Map Matrix ID
		475,      //Scripts Archive ID
		957,	      //Map Scripts Archive ID
		511,      //Message Archive ID
		1022,      //Day Music ID
		1051,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		375,      //Events Archive ID
		33,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		50,
		0xF,
		258,      //Map Matrix ID
		476,      //Scripts Archive ID
		958,	      //Map Scripts Archive ID
		512,      //Message Archive ID
		1022,      //Day Music ID
		1051,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		376,      //Events Archive ID
		33,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x6,
		0x0,
		0x0,      //Map Matrix ID
		477,      //Scripts Archive ID
		959,	      //Map Scripts Archive ID
		513,      //Message Archive ID
		1021,      //Day Music ID
		1050,      //Night Music ID
		168,      //Wild Encounters Archive ID
		377,      //Events Archive ID
		34,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x0,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x6,
		0x0,
		0x0,      //Map Matrix ID
		478,      //Scripts Archive ID
		960,	      //Map Scripts Archive ID
		514,      //Message Archive ID
		1024,      //Day Music ID
		1053,      //Night Music ID
		169,      //Wild Encounters Archive ID
		378,      //Events Archive ID
		36,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x0,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		39,
		0xF,
		201,      //Map Matrix ID
		479,      //Scripts Archive ID
		961,	      //Map Scripts Archive ID
		515,      //Message Archive ID
		1024,      //Day Music ID
		1053,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		379,      //Events Archive ID
		55,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x8,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		244,      //Map Matrix ID
		480,      //Scripts Archive ID
		962,	      //Map Scripts Archive ID
		516,      //Message Archive ID
		1024,      //Day Music ID
		1053,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		380,      //Events Archive ID
		36,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x12,
		0xC,
		0x0,      //Map Matrix ID
		481,      //Scripts Archive ID
		963,	      //Map Scripts Archive ID
		517,      //Message Archive ID
		1025,      //Day Music ID
		1054,      //Night Music ID
		170,      //Wild Encounters Archive ID
		381,      //Events Archive ID
		37,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x0,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		0x7B,      //Map Matrix ID
		482,      //Scripts Archive ID
		964,	      //Map Scripts Archive ID
		518,      //Message Archive ID
		1025,      //Day Music ID
		1054,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x17E,      //Events Archive ID
		37,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		0x7B,      //Map Matrix ID
		483,      //Scripts Archive ID
		965,	      //Map Scripts Archive ID
		519,      //Message Archive ID
		1025,      //Day Music ID
		1054,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		383,      //Events Archive ID
		37,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		50,
		0xF,
		258,      //Map Matrix ID
		484,      //Scripts Archive ID
		966,	      //Map Scripts Archive ID
		520,      //Message Archive ID
		1025,      //Day Music ID
		1054,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		384,      //Events Archive ID
		37,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0xD,
		0xA,
		0x0,      //Map Matrix ID
		485,      //Scripts Archive ID
		967,	      //Map Scripts Archive ID
		521,      //Message Archive ID
		1026,      //Day Music ID
		1055,      //Night Music ID
		171,      //Wild Encounters Archive ID
		385,      //Events Archive ID
		39,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x0,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x11,
		11,
		0x0,      //Map Matrix ID
		486,      //Scripts Archive ID
		968,	      //Map Scripts Archive ID
		522,      //Message Archive ID
		1008,      //Day Music ID
		1037,      //Night Music ID
		172,      //Wild Encounters Archive ID
		386,      //Events Archive ID
		40,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x4,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x11,
		11,
		0x0,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1024,      //Day Music ID
		1053,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		0x0,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x3,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x11,
		11,
		0x0,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1024,      //Day Music ID
		1053,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		0x0,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x3,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x11,
		11,
		0x0,      //Map Matrix ID
		489,      //Scripts Archive ID
		971,	      //Map Scripts Archive ID
		0x20D,      //Message Archive ID
		1008,      //Day Music ID
		1037,      //Night Music ID
		173,      //Wild Encounters Archive ID
		0x183,      //Events Archive ID
		42,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x9,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x4,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x11,
		11,
		0x0,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1024,      //Day Music ID
		1053,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		0x0,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x3,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x11,
		11,
		0x0,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1024,      //Day Music ID
		1053,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		0x0,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x3,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x13,
		0xD,
		0x0,      //Map Matrix ID
		491,      //Scripts Archive ID
		973,	      //Map Scripts Archive ID
		0x20F,      //Message Archive ID
		0x404,      //Day Music ID
		0x421,      //Night Music ID
		174,      //Wild Encounters Archive ID
		0x184,      //Events Archive ID
		0x2B,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0xA,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x4,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x13,
		0xD,
		0x0,      //Map Matrix ID
		495,      //Scripts Archive ID
		977,	      //Map Scripts Archive ID
		0x213,      //Message Archive ID
		0x404,      //Day Music ID
		0x421,      //Night Music ID
		175,      //Wild Encounters Archive ID
		0x185,      //Events Archive ID
		44,      //Map Label Text ID
		0x3,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x3,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x13,
		0xD,
		0x0,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x3E8,      //Day Music ID
		0x3E8,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		0x0,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x3,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x13,
		0xD,
		0x0,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1024,      //Day Music ID
		1053,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		0x0,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x3,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x5,
		0xE,
		119,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		0x0,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x6,
		0x0,
		0x0,      //Map Matrix ID
		1052,      //Scripts Archive ID
		982,	      //Map Scripts Archive ID
		554,      //Message Archive ID
		1004,      //Day Music ID
		1033,      //Night Music ID
		176,      //Wild Encounters Archive ID
		0x186,      //Events Archive ID
		0x1,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x1,      //Map Type
		0x2,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		126,      //Map Matrix ID
		1053,      //Scripts Archive ID
		983,	      //Map Scripts Archive ID
		555,      //Message Archive ID
		1004,      //Day Music ID
		1033,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		391,      //Events Archive ID
		0x1,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		127,      //Map Matrix ID
		1054,      //Scripts Archive ID
		984,	      //Map Scripts Archive ID
		556,      //Message Archive ID
		1004,      //Day Music ID
		1033,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x188,      //Events Archive ID
		0x1,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		128,      //Map Matrix ID
		1055,      //Scripts Archive ID
		985,	      //Map Scripts Archive ID
		557,      //Message Archive ID
		1004,      //Day Music ID
		1033,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		393,      //Events Archive ID
		0x1,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		129,      //Map Matrix ID
		1056,      //Scripts Archive ID
		986,	      //Map Scripts Archive ID
		558,      //Message Archive ID
		1004,      //Day Music ID
		1033,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x18A,      //Events Archive ID
		0x1,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		0x7B,      //Map Matrix ID
		0x421,      //Scripts Archive ID
		987,	      //Map Scripts Archive ID
		559,      //Message Archive ID
		1004,      //Day Music ID
		1033,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		395,      //Events Archive ID
		0x1,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		0x7B,      //Map Matrix ID
		1058,      //Scripts Archive ID
		988,	      //Map Scripts Archive ID
		560,      //Message Archive ID
		1004,      //Day Music ID
		1033,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		396,      //Events Archive ID
		0x1,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x6,
		0x0,
		0x0,      //Map Matrix ID
		1059,      //Scripts Archive ID
		989,	      //Map Scripts Archive ID
		561,      //Message Archive ID
		1005,      //Day Music ID
		1034,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		397,      //Events Archive ID
		0x2,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x1,      //Map Type
		0x2,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x16,
		0xF,
		122,      //Map Matrix ID
		0x424,      //Scripts Archive ID
		990,	      //Map Scripts Archive ID
		562,      //Message Archive ID
		0x442,      //Day Music ID
		0x442,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		398,      //Events Archive ID
		0x2,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		0x74,      //Map Matrix ID
		1061,      //Scripts Archive ID
		991,	      //Map Scripts Archive ID
		563,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		399,      //Events Archive ID
		0x2,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		0x75,      //Map Matrix ID
		1062,      //Scripts Archive ID
		992,	      //Map Scripts Archive ID
		564,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		400,      //Events Archive ID
		0x2,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		160,      //Map Matrix ID
		1064,      //Scripts Archive ID
		994,	      //Map Scripts Archive ID
		565,      //Message Archive ID
		1088,      //Day Music ID
		1088,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x191,      //Events Archive ID
		0x2,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		130,      //Map Matrix ID
		1065,      //Scripts Archive ID
		995,	      //Map Scripts Archive ID
		566,      //Message Archive ID
		1005,      //Day Music ID
		1034,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		402,      //Events Archive ID
		0x2,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		131,      //Map Matrix ID
		1066,      //Scripts Archive ID
		996,	      //Map Scripts Archive ID
		567,      //Message Archive ID
		1005,      //Day Music ID
		1034,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		403,      //Events Archive ID
		0x2,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		0x7B,      //Map Matrix ID
		1067,      //Scripts Archive ID
		997,	      //Map Scripts Archive ID
		568,      //Message Archive ID
		1005,      //Day Music ID
		1034,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		404,      //Events Archive ID
		0x2,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x8,
		0x2,
		0x0,      //Map Matrix ID
		1068,      //Scripts Archive ID
		998,	      //Map Scripts Archive ID
		569,      //Message Archive ID
		1006,      //Day Music ID
		1035,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		405,      //Events Archive ID
		0x3,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x1,      //Map Type
		0x2,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x16,
		0xF,
		122,      //Map Matrix ID
		1069,      //Scripts Archive ID
		999,	      //Map Scripts Archive ID
		570,      //Message Archive ID
		0x442,      //Day Music ID
		0x442,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		406,      //Events Archive ID
		0x3,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		0x74,      //Map Matrix ID
		1070,      //Scripts Archive ID
		0x3E8,	      //Map Scripts Archive ID
		571,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		407,      //Events Archive ID
		0x3,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		0x75,      //Map Matrix ID
		1071,      //Scripts Archive ID
		1001,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		408,      //Events Archive ID
		0x3,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x16,
		0xF,
		236,      //Map Matrix ID
		1073,      //Scripts Archive ID
		1003,	      //Map Scripts Archive ID
		572,      //Message Archive ID
		1006,      //Day Music ID
		1035,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		409,      //Events Archive ID
		95,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		0x7B,      //Map Matrix ID
		0x432,      //Scripts Archive ID
		1004,	      //Map Scripts Archive ID
		573,      //Message Archive ID
		1006,      //Day Music ID
		1035,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x19A,      //Events Archive ID
		0x3,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		0x7B,      //Map Matrix ID
		0x433,      //Scripts Archive ID
		1005,	      //Map Scripts Archive ID
		574,      //Message Archive ID
		1006,      //Day Music ID
		1035,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		411,      //Events Archive ID
		0x3,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0xA,
		0x4,
		0x0,      //Map Matrix ID
		1076,      //Scripts Archive ID
		1006,	      //Map Scripts Archive ID
		575,      //Message Archive ID
		1015,      //Day Music ID
		1044,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		412,      //Events Archive ID
		0x4,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x1,      //Map Type
		0x2,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x16,
		0xF,
		122,      //Map Matrix ID
		1077,      //Scripts Archive ID
		1007,	      //Map Scripts Archive ID
		576,      //Message Archive ID
		0x442,      //Day Music ID
		0x442,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		413,      //Events Archive ID
		0x4,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		0x74,      //Map Matrix ID
		1078,      //Scripts Archive ID
		1008,	      //Map Scripts Archive ID
		577,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		414,      //Events Archive ID
		0x4,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		0x75,      //Map Matrix ID
		1079,      //Scripts Archive ID
		1009,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		415,      //Events Archive ID
		0x4,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x16,
		0xF,
		137,      //Map Matrix ID
		1081,      //Scripts Archive ID
		1011,	      //Map Scripts Archive ID
		578,      //Message Archive ID
		1015,      //Day Music ID
		1044,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		416,      //Events Archive ID
		100,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		0x7B,      //Map Matrix ID
		1082,      //Scripts Archive ID
		1012,	      //Map Scripts Archive ID
		579,      //Message Archive ID
		1015,      //Day Music ID
		1044,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		417,      //Events Archive ID
		0x4,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		244,      //Map Matrix ID
		1083,      //Scripts Archive ID
		1013,	      //Map Scripts Archive ID
		580,      //Message Archive ID
		1015,      //Day Music ID
		1044,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		418,      //Events Archive ID
		0x4,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		0x7B,      //Map Matrix ID
		1084,      //Scripts Archive ID
		1014,	      //Map Scripts Archive ID
		581,      //Message Archive ID
		1015,      //Day Music ID
		1044,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		419,      //Events Archive ID
		0x4,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		0x7B,      //Map Matrix ID
		0x43D,      //Scripts Archive ID
		1015,	      //Map Scripts Archive ID
		582,      //Message Archive ID
		1015,      //Day Music ID
		1044,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		420,      //Events Archive ID
		0x4,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0xA,
		0x4,
		0x0,      //Map Matrix ID
		0x43E,      //Scripts Archive ID
		1016,	      //Map Scripts Archive ID
		583,      //Message Archive ID
		1013,      //Day Music ID
		1042,      //Night Music ID
		177,      //Wild Encounters Archive ID
		421,      //Events Archive ID
		0x5,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x1,      //Map Type
		0x2,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		0x74,      //Map Matrix ID
		1088,      //Scripts Archive ID
		1018,	      //Map Scripts Archive ID
		584,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		422,      //Events Archive ID
		0x5,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		0x75,      //Map Matrix ID
		1089,      //Scripts Archive ID
		1019,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		423,      //Events Archive ID
		0x5,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		168,      //Map Matrix ID
		1091,      //Scripts Archive ID
		1021,	      //Map Scripts Archive ID
		585,      //Message Archive ID
		1013,      //Day Music ID
		1042,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		424,      //Events Archive ID
		0x5,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		170,      //Map Matrix ID
		1092,      //Scripts Archive ID
		1022,	      //Map Scripts Archive ID
		586,      //Message Archive ID
		1013,      //Day Music ID
		1042,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		425,      //Events Archive ID
		0x5,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		124,      //Map Matrix ID
		1093,      //Scripts Archive ID
		1023,	      //Map Scripts Archive ID
		587,      //Message Archive ID
		1013,      //Day Music ID
		1042,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		426,      //Events Archive ID
		0x5,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		124,      //Map Matrix ID
		1094,      //Scripts Archive ID
		1024,	      //Map Scripts Archive ID
		588,      //Message Archive ID
		1013,      //Day Music ID
		1042,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		427,      //Events Archive ID
		0x5,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		169,      //Map Matrix ID
		1095,      //Scripts Archive ID
		1025,	      //Map Scripts Archive ID
		589,      //Message Archive ID
		1013,      //Day Music ID
		1042,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		428,      //Events Archive ID
		0x5,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x11,
		11,
		0x0,      //Map Matrix ID
		1096,      //Scripts Archive ID
		1026,	      //Map Scripts Archive ID
		590,      //Message Archive ID
		1020,      //Day Music ID
		1049,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		429,      //Events Archive ID
		82,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x1,      //Map Type
		0x4,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x16,
		0xF,
		122,      //Map Matrix ID
		1097,      //Scripts Archive ID
		1027,	      //Map Scripts Archive ID
		591,      //Message Archive ID
		0x442,      //Day Music ID
		0x442,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		430,      //Events Archive ID
		82,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		0x74,      //Map Matrix ID
		1098,      //Scripts Archive ID
		0x404,	      //Map Scripts Archive ID
		592,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		431,      //Events Archive ID
		82,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		0x75,      //Map Matrix ID
		1099,      //Scripts Archive ID
		1029,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		432,      //Events Archive ID
		82,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		52,
		0xF,
		265,      //Map Matrix ID
		1101,      //Scripts Archive ID
		1031,	      //Map Scripts Archive ID
		593,      //Message Archive ID
		1020,      //Day Music ID
		1049,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		433,      //Events Archive ID
		120,      //Map Label Text ID
		0x2,      //Map Label Window ID
		(0x1A),      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		125,      //Map Matrix ID
		1102,      //Scripts Archive ID
		1032,	      //Map Scripts Archive ID
		594,      //Message Archive ID
		1020,      //Day Music ID
		1049,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		434,      //Events Archive ID
		82,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		244,      //Map Matrix ID
		1103,      //Scripts Archive ID
		1033,	      //Map Scripts Archive ID
		595,      //Message Archive ID
		1020,      //Day Music ID
		1049,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		435,      //Events Archive ID
		82,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x13,
		0xD,
		0x0,      //Map Matrix ID
		1104,      //Scripts Archive ID
		1034,	      //Map Scripts Archive ID
		596,      //Message Archive ID
		1009,      //Day Music ID
		1038,      //Night Music ID
		178,      //Wild Encounters Archive ID
		436,      //Events Archive ID
		83,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x1,      //Map Type
		0x2,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x16,
		0xF,
		122,      //Map Matrix ID
		1105,      //Scripts Archive ID
		1035,	      //Map Scripts Archive ID
		597,      //Message Archive ID
		0x442,      //Day Music ID
		0x442,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		437,      //Events Archive ID
		83,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		0x74,      //Map Matrix ID
		1106,      //Scripts Archive ID
		1036,	      //Map Scripts Archive ID
		598,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		438,      //Events Archive ID
		83,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		0x75,      //Map Matrix ID
		1107,      //Scripts Archive ID
		1037,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		439,      //Events Archive ID
		83,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		38,
		0xF,
		199,      //Map Matrix ID
		1109,      //Scripts Archive ID
		0x40F,	      //Map Scripts Archive ID
		599,      //Message Archive ID
		1009,      //Day Music ID
		1038,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		440,      //Events Archive ID
		83,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x8,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		38,
		0xF,
		200,      //Map Matrix ID
		1110,      //Scripts Archive ID
		1040,	      //Map Scripts Archive ID
		600,      //Message Archive ID
		1009,      //Day Music ID
		1038,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		441,      //Events Archive ID
		83,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x8,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		207,      //Map Matrix ID
		1111,      //Scripts Archive ID
		1041,	      //Map Scripts Archive ID
		601,      //Message Archive ID
		1009,      //Day Music ID
		1038,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		442,      //Events Archive ID
		83,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x8,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		51,
		0xF,
		264,      //Map Matrix ID
		1112,      //Scripts Archive ID
		1042,	      //Map Scripts Archive ID
		602,      //Message Archive ID
		1009,      //Day Music ID
		1038,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		443,      //Events Archive ID
		119,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		0x7B,      //Map Matrix ID
		1113,      //Scripts Archive ID
		1043,	      //Map Scripts Archive ID
		604,      //Message Archive ID
		1009,      //Day Music ID
		1038,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		444,      //Events Archive ID
		83,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x5,
		0xE,
		120,      //Map Matrix ID
		1118,      //Scripts Archive ID
		1045,	      //Map Scripts Archive ID
		635,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		445,      //Events Archive ID
		0x0,      //Map Label Text ID
		0x2,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x6,
		0x0,
		0x0,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1024,      //Day Music ID
		1053,      //Night Music ID
		179,      //Wild Encounters Archive ID
		446,      //Events Archive ID
		35,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x1,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0xD,
		0x7,
		0x0,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1026,      //Day Music ID
		1055,      //Night Music ID
		180,      //Wild Encounters Archive ID
		447,      //Events Archive ID
		38,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		11,      //Camera Type
		0x2,      //Map Type
		0x1,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x11,
		11,
		0x0,      //Map Matrix ID
		1121,      //Scripts Archive ID
		1048,	      //Map Scripts Archive ID
		642,      //Message Archive ID
		1008,      //Day Music ID
		1037,      //Night Music ID
		181,      //Wild Encounters Archive ID
		448,      //Events Archive ID
		41,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x4,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x13,
		0xD,
		0x0,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x3E8,      //Day Music ID
		0x3E8,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		0x0,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x3,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x13,
		0xD,
		0x0,      //Map Matrix ID
		1123,      //Scripts Archive ID
		1050,	      //Map Scripts Archive ID
		644,      //Message Archive ID
		0x404,      //Day Music ID
		0x421,      //Night Music ID
		182,      //Wild Encounters Archive ID
		449,      //Events Archive ID
		45,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x1,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0xD,
		0xD,
		0x0,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1006,      //Day Music ID
		1035,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		450,      //Events Archive ID
		85,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x1,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x13,
		0xD,
		0x0,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x3E8,      //Day Music ID
		0x3E8,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		0x0,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x2,      //Map Type
		0x1,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		235,      //Map Matrix ID
		0x7,      //Scripts Archive ID
		507,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		451,      //Events Archive ID
		0x6,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		235,      //Map Matrix ID
		41,      //Scripts Archive ID
		541,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		452,      //Events Archive ID
		0x7,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		235,      //Map Matrix ID
		55,      //Scripts Archive ID
		555,	      //Map Scripts Archive ID
		0x45,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		453,      //Events Archive ID
		0x8,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		235,      //Map Matrix ID
		77,      //Scripts Archive ID
		577,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		454,      //Events Archive ID
		0x9,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		235,      //Map Matrix ID
		104,      //Scripts Archive ID
		604,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		455,      //Events Archive ID
		0xA,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		235,      //Map Matrix ID
		128,      //Scripts Archive ID
		628,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		456,      //Events Archive ID
		0xB,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		235,      //Map Matrix ID
		140,      //Scripts Archive ID
		640,	      //Map Scripts Archive ID
		146,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		457,      //Events Archive ID
		(0xC),      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		235,      //Map Matrix ID
		163,      //Scripts Archive ID
		663,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		458,      //Events Archive ID
		0xD,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		235,      //Map Matrix ID
		179,      //Scripts Archive ID
		679,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		459,      //Events Archive ID
		(0xE),      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		235,      //Map Matrix ID
		185,      //Scripts Archive ID
		685,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		460,      //Events Archive ID
		(0xF),      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		235,      //Map Matrix ID
		205,      //Scripts Archive ID
		705,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		461,      //Events Archive ID
		81,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		235,      //Map Matrix ID
		0x427,      //Scripts Archive ID
		993,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		462,      //Events Archive ID
		0x2,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		235,      //Map Matrix ID
		0x430,      //Scripts Archive ID
		1002,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		463,      //Events Archive ID
		0x3,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		235,      //Map Matrix ID
		1080,      //Scripts Archive ID
		0x3F2,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		464,      //Events Archive ID
		0x4,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		235,      //Map Matrix ID
		0x442,      //Scripts Archive ID
		1020,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		465,      //Events Archive ID
		0x5,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		235,      //Map Matrix ID
		1100,      //Scripts Archive ID
		1030,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		466,      //Events Archive ID
		82,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		235,      //Map Matrix ID
		1108,      //Scripts Archive ID
		1038,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		467,      //Events Archive ID
		83,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		124,      //Map Matrix ID
		49,      //Scripts Archive ID
		549,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1011,      //Day Music ID
		1040,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		468,      //Events Archive ID
		0x7,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		35,
		0xF,
		171,      //Map Matrix ID
		448,      //Scripts Archive ID
		930,	      //Map Scripts Archive ID
		484,      //Message Archive ID
		1026,      //Day Music ID
		1055,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		469,      //Events Archive ID
		108,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x8,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		33,
		0xF,
		196,      //Map Matrix ID
		373,      //Scripts Archive ID
		870,	      //Map Scripts Archive ID
		307,      //Message Archive ID
		1092,      //Day Music ID
		1092,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		470,      //Events Archive ID
		80,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		68,
		0xF,
		0xEE,      //Map Matrix ID
		347,      //Scripts Archive ID
		844,	      //Map Scripts Archive ID
		288,      //Message Archive ID
		1094,      //Day Music ID
		1094,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		471,      //Events Archive ID
		71,      //Map Label Text ID
		0x6,      //Map Label Window ID
		(0x1A),      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		0x75,      //Map Matrix ID
		199,      //Scripts Archive ID
		699,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		472,      //Events Archive ID
		(0xF),      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		235,      //Map Matrix ID
		200,      //Scripts Archive ID
		700,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		473,      //Events Archive ID
		(0xF),      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		68,
		0xF,
		0xEF,      //Map Matrix ID
		348,      //Scripts Archive ID
		845,	      //Map Scripts Archive ID
		289,      //Message Archive ID
		1094,      //Day Music ID
		1094,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		474,      //Events Archive ID
		71,      //Map Label Text ID
		0x6,      //Map Label Window ID
		(0x1A),      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		0x7B,      //Map Matrix ID
		487,      //Scripts Archive ID
		969,	      //Map Scripts Archive ID
		523,      //Message Archive ID
		1008,      //Day Music ID
		1037,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		475,      //Events Archive ID
		40,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		244,      //Map Matrix ID
		1122,      //Scripts Archive ID
		1049,	      //Map Scripts Archive ID
		643,      //Message Archive ID
		1008,      //Day Music ID
		1037,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		476,      //Events Archive ID
		41,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		243,      //Map Matrix ID
		490,      //Scripts Archive ID
		972,	      //Map Scripts Archive ID
		0x20E,      //Message Archive ID
		1008,      //Day Music ID
		1037,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		477,      //Events Archive ID
		42,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		50,
		0xF,
		258,      //Map Matrix ID
		492,      //Scripts Archive ID
		974,	      //Map Scripts Archive ID
		0x210,      //Message Archive ID
		0x404,      //Day Music ID
		0x421,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		478,      //Events Archive ID
		0x2B,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		244,      //Map Matrix ID
		493,      //Scripts Archive ID
		975,	      //Map Scripts Archive ID
		0x211,      //Message Archive ID
		0x404,      //Day Music ID
		0x421,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		479,      //Events Archive ID
		0x2B,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		125,      //Map Matrix ID
		494,      //Scripts Archive ID
		976,	      //Map Scripts Archive ID
		530,      //Message Archive ID
		0x404,      //Day Music ID
		0x421,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		480,      //Events Archive ID
		0x2B,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		63,
		0xF,
		0xF0,      //Map Matrix ID
		243,      //Scripts Archive ID
		740,	      //Map Scripts Archive ID
		0xF0,      //Message Archive ID
		1069,      //Day Music ID
		1069,      //Night Music ID
		0x17,      //Wild Encounters Archive ID
		481,      //Events Archive ID
		52,      //Map Label Text ID
		0x5,      //Map Label Window ID
		0x0,      //Weather
		0x2,      //Camera Type
		0x2,      //Map Type
		0x3,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		63,
		0xF,
		0xF0,      //Map Matrix ID
		244,      //Scripts Archive ID
		741,	      //Map Scripts Archive ID
		241,      //Message Archive ID
		1069,      //Day Music ID
		1069,      //Night Music ID
		0x18,      //Wild Encounters Archive ID
		482,      //Events Archive ID
		52,      //Map Label Text ID
		0x5,      //Map Label Window ID
		0x0,      //Weather
		0x2,      //Camera Type
		0x2,      //Map Type
		0x3,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		63,
		0xF,
		0xF0,      //Map Matrix ID
		245,      //Scripts Archive ID
		742,	      //Map Scripts Archive ID
		242,      //Message Archive ID
		1069,      //Day Music ID
		1069,      //Night Music ID
		0x19,      //Wild Encounters Archive ID
		483,      //Events Archive ID
		52,      //Map Label Text ID
		0x5,      //Map Label Window ID
		0x0,      //Weather
		0x2,      //Camera Type
		0x2,      //Map Type
		0x3,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		63,
		0xF,
		0xF0,      //Map Matrix ID
		246,      //Scripts Archive ID
		743,	      //Map Scripts Archive ID
		243,      //Message Archive ID
		1069,      //Day Music ID
		1069,      //Night Music ID
		0x1A,      //Wild Encounters Archive ID
		484,      //Events Archive ID
		52,      //Map Label Text ID
		0x5,      //Map Label Window ID
		0x0,      //Weather
		0x2,      //Camera Type
		0x2,      //Map Type
		0x3,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		63,
		0xF,
		0xF0,      //Map Matrix ID
		247,      //Scripts Archive ID
		744,	      //Map Scripts Archive ID
		244,      //Message Archive ID
		1069,      //Day Music ID
		1069,      //Night Music ID
		0x1B,      //Wild Encounters Archive ID
		485,      //Events Archive ID
		52,      //Map Label Text ID
		0x5,      //Map Label Window ID
		0x0,      //Weather
		0x2,      //Camera Type
		0x2,      //Map Type
		0x3,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		63,
		0xF,
		0xF0,      //Map Matrix ID
		248,      //Scripts Archive ID
		745,	      //Map Scripts Archive ID
		245,      //Message Archive ID
		1069,      //Day Music ID
		1069,      //Night Music ID
		0x1C,      //Wild Encounters Archive ID
		486,      //Events Archive ID
		52,      //Map Label Text ID
		0x5,      //Map Label Window ID
		0x0,      //Weather
		0x2,      //Camera Type
		0x2,      //Map Type
		0x3,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x3C,
		0xF,
		241,      //Map Matrix ID
		0xEE,      //Scripts Archive ID
		735,	      //Map Scripts Archive ID
		236,      //Message Archive ID
		1096,      //Day Music ID
		1096,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		487,      //Events Archive ID
		86,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0xD,      //Weather
		0xE,      //Camera Type
		0x2,      //Map Type
		0x9,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x3C,
		0xF,
		242,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x430,      //Day Music ID
		0x430,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		86,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0xD,      //Weather
		0xE,      //Camera Type
		0x2,      //Map Type
		0x9,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		53,
		0xF,
		77,      //Map Matrix ID
		0x141,      //Scripts Archive ID
		818,	      //Map Scripts Archive ID
		274,      //Message Archive ID
		0x433,      //Day Music ID
		0x433,      //Night Music ID
		115,      //Wild Encounters Archive ID
		488,      //Events Archive ID
		66,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		53,
		0xF,
		78,      //Map Matrix ID
		0x142,      //Scripts Archive ID
		819,	      //Map Scripts Archive ID
		275,      //Message Archive ID
		0x427,      //Day Music ID
		0x427,      //Night Music ID
		0x74,      //Wild Encounters Archive ID
		489,      //Events Archive ID
		67,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x14,
		0xF,
		243,      //Map Matrix ID
		331,      //Scripts Archive ID
		828,	      //Map Scripts Archive ID
		0x116,      //Message Archive ID
		1022,      //Day Music ID
		1051,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		490,      //Events Archive ID
		0x45,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		0x1F,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x427,      //Day Music ID
		0x427,      //Night Music ID
		46,      //Wild Encounters Archive ID
		491,      //Events Archive ID
		53,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x1D,      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0x9,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		207,      //Map Matrix ID
		172,      //Scripts Archive ID
		672,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1017,      //Day Music ID
		1046,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		492,      //Events Archive ID
		104,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x8,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x1F,
		0xF,
		208,      //Map Matrix ID
		33,      //Scripts Archive ID
		0x215,	      //Map Scripts Archive ID
		51,      //Message Archive ID
		0x3F2,      //Day Music ID
		0x40F,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		493,      //Events Archive ID
		0x6,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		65,      //Map Matrix ID
		295,      //Scripts Archive ID
		792,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		66,      //Wild Encounters Archive ID
		494,      //Events Archive ID
		62,      //Map Label Text ID
		0x4,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		66,      //Map Matrix ID
		296,      //Scripts Archive ID
		793,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		67,      //Wild Encounters Archive ID
		495,      //Events Archive ID
		62,      //Map Label Text ID
		0x4,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		66,      //Map Matrix ID
		297,      //Scripts Archive ID
		794,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		68,      //Wild Encounters Archive ID
		496,      //Events Archive ID
		62,      //Map Label Text ID
		0x4,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		64,      //Map Matrix ID
		298,      //Scripts Archive ID
		795,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		0x45,      //Wild Encounters Archive ID
		497,      //Events Archive ID
		62,      //Map Label Text ID
		0x4,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		64,      //Map Matrix ID
		299,      //Scripts Archive ID
		796,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		70,      //Wild Encounters Archive ID
		498,      //Events Archive ID
		62,      //Map Label Text ID
		0x4,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		65,      //Map Matrix ID
		300,      //Scripts Archive ID
		797,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		71,      //Wild Encounters Archive ID
		499,      //Events Archive ID
		62,      //Map Label Text ID
		0x4,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		65,      //Map Matrix ID
		301,      //Scripts Archive ID
		798,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		0x48,      //Wild Encounters Archive ID
		500,      //Events Archive ID
		62,      //Map Label Text ID
		0x4,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		66,      //Map Matrix ID
		302,      //Scripts Archive ID
		799,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		73,      //Wild Encounters Archive ID
		501,      //Events Archive ID
		62,      //Map Label Text ID
		0x4,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		66,      //Map Matrix ID
		303,      //Scripts Archive ID
		800,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		0x4A,      //Wild Encounters Archive ID
		0x1F6,      //Events Archive ID
		62,      //Map Label Text ID
		0x4,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		64,      //Map Matrix ID
		304,      //Scripts Archive ID
		801,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		75,      //Wild Encounters Archive ID
		503,      //Events Archive ID
		62,      //Map Label Text ID
		0x4,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		64,      //Map Matrix ID
		305,      //Scripts Archive ID
		802,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		76,      //Wild Encounters Archive ID
		0x1F8,      //Events Archive ID
		62,      //Map Label Text ID
		0x4,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		65,      //Map Matrix ID
		306,      //Scripts Archive ID
		803,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		77,      //Wild Encounters Archive ID
		0x1F9,      //Events Archive ID
		62,      //Map Label Text ID
		0x4,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		65,      //Map Matrix ID
		307,      //Scripts Archive ID
		804,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		78,      //Wild Encounters Archive ID
		0x1FA,      //Events Archive ID
		62,      //Map Label Text ID
		0x4,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		66,      //Map Matrix ID
		308,      //Scripts Archive ID
		805,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		79,      //Wild Encounters Archive ID
		507,      //Events Archive ID
		62,      //Map Label Text ID
		0x4,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		66,      //Map Matrix ID
		309,      //Scripts Archive ID
		806,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x1FC,      //Events Archive ID
		62,      //Map Label Text ID
		0x4,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		64,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		62,      //Map Label Text ID
		0x6,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		64,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		62,      //Map Label Text ID
		0x6,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		65,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x1FD,      //Events Archive ID
		62,      //Map Label Text ID
		0x6,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		65,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		62,      //Map Label Text ID
		0x6,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		66,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		62,      //Map Label Text ID
		0x6,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		66,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		62,      //Map Label Text ID
		0x6,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		64,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		62,      //Map Label Text ID
		0x6,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		64,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		510,      //Events Archive ID
		62,      //Map Label Text ID
		0x6,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		65,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		62,      //Map Label Text ID
		0x6,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		65,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		62,      //Map Label Text ID
		0x6,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		66,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		62,      //Map Label Text ID
		0x6,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		66,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		62,      //Map Label Text ID
		0x6,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		64,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		62,      //Map Label Text ID
		0x6,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		64,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		511,      //Events Archive ID
		62,      //Map Label Text ID
		0x6,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		65,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		62,      //Map Label Text ID
		0x6,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		65,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		62,      //Map Label Text ID
		0x6,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		66,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		62,      //Map Label Text ID
		0x6,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		66,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		62,      //Map Label Text ID
		0x6,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		64,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		62,      //Map Label Text ID
		0x6,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		64,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		62,      //Map Label Text ID
		0x6,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		65,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		62,      //Map Label Text ID
		0x6,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		65,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		62,      //Map Label Text ID
		0x6,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		66,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		62,      //Map Label Text ID
		0x6,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		66,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		62,      //Map Label Text ID
		0x6,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		56,
		0xF,
		66,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1064,      //Day Music ID
		1064,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		62,      //Map Label Text ID
		0x6,      //Map Label Window ID
		(0xE),      //Weather
		0x0,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		32,
		0xF,
		166,      //Map Matrix ID
		121,      //Scripts Archive ID
		621,	      //Map Scripts Archive ID
		129,      //Message Archive ID
		1089,      //Day Music ID
		1089,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		512,      //Events Archive ID
		97,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		73,
		0xF,
		256,      //Map Matrix ID
		374,      //Scripts Archive ID
		871,	      //Map Scripts Archive ID
		308,      //Message Archive ID
		1020,      //Day Music ID
		1049,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		513,      //Events Archive ID
		112,      //Map Label Text ID
		0x7,      //Map Label Window ID
		0x0,      //Weather
		0x2,      //Camera Type
		0x1,      //Map Type
		0x2,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_ALLOWED,      //Fly Allowed Flag
	},
	{
		44,
		0xF,
		250,      //Map Matrix ID
		375,      //Scripts Archive ID
		872,	      //Map Scripts Archive ID
		309,      //Message Archive ID
		1020,      //Day Music ID
		1049,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		514,      //Events Archive ID
		112,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		45,
		0xF,
		251,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1092,      //Day Music ID
		1092,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		80,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		46,
		0xF,
		252,      //Map Matrix ID
		376,      //Scripts Archive ID
		873,	      //Map Scripts Archive ID
		310,      //Message Archive ID
		1195,      //Day Music ID
		1195,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		515,      //Events Archive ID
		113,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		47,
		0xF,
		253,      //Map Matrix ID
		377,      //Scripts Archive ID
		874,	      //Map Scripts Archive ID
		311,      //Message Archive ID
		1192,      //Day Music ID
		1192,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		516,      //Events Archive ID
		0x74,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		48,
		0xF,
		254,      //Map Matrix ID
		378,      //Scripts Archive ID
		875,	      //Map Scripts Archive ID
		312,      //Message Archive ID
		1193,      //Day Music ID
		1193,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		517,      //Events Archive ID
		114,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		49,
		0xF,
		255,      //Map Matrix ID
		379,      //Scripts Archive ID
		876,	      //Map Scripts Archive ID
		313,      //Message Archive ID
		1191,      //Day Music ID
		1191,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		518,      //Events Archive ID
		115,      //Map Label Text ID
		0x6,      //Map Label Window ID
		30,      //Weather
		0x0,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x16,
		0xF,
		246,      //Map Matrix ID
		148,      //Scripts Archive ID
		648,	      //Map Scripts Archive ID
		154,      //Message Archive ID
		0x442,      //Day Music ID
		0x442,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		519,      //Events Archive ID
		101,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		40,
		0xF,
		262,      //Map Matrix ID
		29,      //Scripts Archive ID
		0x211,	      //Map Scripts Archive ID
		47,      //Message Archive ID
		1196,      //Day Music ID
		1196,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		520,      //Events Archive ID
		118,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		40,
		0xF,
		263,      //Map Matrix ID
		30,      //Scripts Archive ID
		530,	      //Map Scripts Archive ID
		48,      //Message Archive ID
		1196,      //Day Music ID
		1196,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		521,      //Events Archive ID
		118,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		58,
		0xF,
		261,      //Map Matrix ID
		349,      //Scripts Archive ID
		846,	      //Map Scripts Archive ID
		290,      //Message Archive ID
		1067,      //Day Music ID
		1067,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		522,      //Events Archive ID
		71,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x4A,
		0xF,
		268,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x4A6,      //Day Music ID
		0x4A6,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		0x75,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x3,      //Map Type
		0x11,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		58,
		0xF,
		267,      //Map Matrix ID
		83,      //Scripts Archive ID
		583,	      //Map Scripts Archive ID
		96,      //Message Archive ID
		1013,      //Day Music ID
		1042,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		523,      //Events Archive ID
		121,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		58,
		0xF,
		266,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		1013,      //Day Music ID
		1042,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		122,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x7,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x4A,
		0xF,
		269,      //Map Matrix ID
		380,      //Scripts Archive ID
		877,	      //Map Scripts Archive ID
		314,      //Message Archive ID
		0x4A6,      //Day Music ID
		0x4A6,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		524,      //Events Archive ID
		0x75,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x3,      //Map Type
		0x11,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x4A,
		0xF,
		270,      //Map Matrix ID
		381,      //Scripts Archive ID
		878,	      //Map Scripts Archive ID
		315,      //Message Archive ID
		0x4A6,      //Day Music ID
		0x4A6,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		0x75,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x3,      //Map Type
		0x11,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x4A,
		0xF,
		271,      //Map Matrix ID
		0x17E,      //Scripts Archive ID
		879,	      //Map Scripts Archive ID
		316,      //Message Archive ID
		0x4A6,      //Day Music ID
		0x4A6,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		0x75,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x3,      //Map Type
		0x11,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x4A,
		0xF,
		272,      //Map Matrix ID
		383,      //Scripts Archive ID
		880,	      //Map Scripts Archive ID
		317,      //Message Archive ID
		0x4A6,      //Day Music ID
		0x4A6,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		0x75,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x3,      //Map Type
		0x11,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x4A,
		0xF,
		273,      //Map Matrix ID
		384,      //Scripts Archive ID
		881,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x4A6,      //Day Music ID
		0x4A6,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		0x75,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x3,      //Map Type
		0x11,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x4A,
		0xF,
		274,      //Map Matrix ID
		385,      //Scripts Archive ID
		882,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x4A6,      //Day Music ID
		0x4A6,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		0x75,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x3,      //Map Type
		0x11,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x4A,
		0xF,
		275,      //Map Matrix ID
		386,      //Scripts Archive ID
		883,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x4A6,      //Day Music ID
		0x4A6,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		0x75,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x3,      //Map Type
		0x11,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x4A,
		0xF,
		0x114,      //Map Matrix ID
		0x183,      //Scripts Archive ID
		0x374,	      //Map Scripts Archive ID
		0x13E,      //Message Archive ID
		0x4A6,      //Day Music ID
		0x4A6,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		0x75,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x3,      //Map Type
		0x11,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x4A,
		0xF,
		0x115,      //Map Matrix ID
		0x184,      //Scripts Archive ID
		0x375,	      //Map Scripts Archive ID
		0x13F,      //Message Archive ID
		0x4A6,      //Day Music ID
		0x4A6,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		0x75,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x3,      //Map Type
		0x11,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x4A,
		0xF,
		0x116,      //Map Matrix ID
		0x185,      //Scripts Archive ID
		0x376,	      //Map Scripts Archive ID
		0x140,      //Message Archive ID
		0x4A6,      //Day Music ID
		0x4A6,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		0x75,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x3,      //Map Type
		0x11,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x4A,
		0xF,
		0x117,      //Map Matrix ID
		0x186,      //Scripts Archive ID
		0x377,	      //Map Scripts Archive ID
		0x141,      //Message Archive ID
		0x4A6,      //Day Music ID
		0x4A6,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x0,      //Events Archive ID
		0x75,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x3,      //Map Type
		0x11,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x3C,
		0xF,
		0x118,      //Map Matrix ID
		0xEF,      //Scripts Archive ID
		0x2E0,	      //Map Scripts Archive ID
		0xED,      //Message Archive ID
		0x430,      //Day Music ID
		0x430,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x20D,      //Events Archive ID
		0x33,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0xD,      //Weather
		0x5,      //Camera Type
		0x3,      //Map Type
		0x4,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x3C,
		0xF,
		0x119,      //Map Matrix ID
		0xF0,      //Scripts Archive ID
		0x2E1,	      //Map Scripts Archive ID
		0xEE,      //Message Archive ID
		0x430,      //Day Music ID
		0x430,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x20E,      //Events Archive ID
		0x33,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0xD,      //Weather
		0x5,      //Camera Type
		0x3,      //Map Type
		0x4,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x15,
		0xF,
		0x11A,      //Map Matrix ID
		0x19A,      //Scripts Archive ID
		0x383,	      //Map Scripts Archive ID
		0x17E,      //Message Archive ID
		0x43D,      //Day Music ID
		0x43E,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x20F,      //Events Archive ID
		0x6,      //Map Label Text ID
		0x6,      //Map Label Window ID
		0x0,      //Weather
		0x4,      //Camera Type
		0x4,      //Map Type
		0x6,      //Battle BG
		MAP_HEADER_BIKE_NOT_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_NOT_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_NOT_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x48,
		0xF,
		0x11B,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x433,      //Day Music ID
		0x433,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x210,      //Events Archive ID
		0x45,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x48,
		0xF,
		0x11C,      //Map Matrix ID
		0x188,      //Scripts Archive ID
		0x379,	      //Map Scripts Archive ID
		0x142,      //Message Archive ID
		0x427,      //Day Music ID
		0x427,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x211,      //Events Archive ID
		0x7B,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xB,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x45,
		0xF,
		0x11D,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x432,      //Day Music ID
		0x432,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		530,      //Events Archive ID
		0x32,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x1D,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x45,
		0xF,
		0x11E,      //Map Matrix ID
		0x18A,      //Scripts Archive ID
		0x37B,	      //Map Scripts Archive ID
		0x143,      //Message Archive ID
		0x427,      //Day Music ID
		0x427,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x213,      //Events Archive ID
		0x7C,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x1D,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x39,
		0xF,
		0x11F,      //Map Matrix ID
		0x191,      //Scripts Archive ID
		0x381,	      //Map Scripts Archive ID
		0x17,      //Message Archive ID
		0x404,      //Day Music ID
		0x421,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x214,      //Events Archive ID
		0x2B,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
	{
		0x39,
		0xF,
		288,      //Map Matrix ID
		396,      //Scripts Archive ID
		0x37D,	      //Map Scripts Archive ID
		0x144,      //Message Archive ID
		0x427,      //Day Music ID
		0x427,      //Night Music ID
		0xFFFF,      //Wild Encounters Archive ID
		0x215,      //Events Archive ID
		0x7D,      //Map Label Text ID
		0x4,      //Map Label Window ID
		0x0,      //Weather
		0xC,      //Camera Type
		0x3,      //Map Type
		0xA,      //Battle BG
		MAP_HEADER_BIKE_ALLOWED,      //Bike Allowed Flag
		MAP_HEADER_RUNNING_ALLOWED,      //Running Allowed Flag
		MAP_HEADER_ESCAPE_ROPE_ALLOWED,      //Escape Rope Allowed Flag
		MAP_HEADER_FLY_NOT_ALLOWED,      //Fly Allowed Flag
	},
};

u32 MapHeader_IDBoundsCheck (u32 headerID)
{
    if (headerID >= NELEMS(mapHeaders)) {
        GF_ASSERT(0);
        return 3;
    }

    return headerID;
}

const u16 sub_0203A038 (u32 headerID)
{
    headerID = MapHeader_IDBoundsCheck(headerID);
    return mapHeaders[headerID].unk_00;
}

const u16 sub_0203A04C (u32 headerID)
{
    headerID = MapHeader_IDBoundsCheck(headerID);
    return mapHeaders[headerID].unk_01;
}

const u16 MapHeader_GetMapMatrixID (u32 headerID)
{
    u16 mapMatrixID;

    headerID = MapHeader_IDBoundsCheck(headerID);
    mapMatrixID = mapHeaders[headerID].mapMatrixID;

    if (mapMatrixID == 22) {
        if (Unk_020E4C40 == 11) {
            mapMatrixID = 23;
        }
    }

    return mapMatrixID;
}

u32 MapHeader_GetMsgArchiveID (u32 headerID)
{
    headerID = MapHeader_IDBoundsCheck(headerID);
    return mapHeaders[headerID].msgArchiveID;
}

u32 MapHeader_GetScriptsArchiveID (u32 headerID)
{
    headerID = MapHeader_IDBoundsCheck(headerID);
    return mapHeaders[headerID].scriptsArchiveID;
}

u32 MapHeader_GetMapScriptArchiveID (u32 headerID)
{
    headerID = MapHeader_IDBoundsCheck(headerID);
    return mapHeaders[headerID].mapScriptArchiveID;
}

u16 MapHeader_GetDayMusicID (u32 headerID)
{
    headerID = MapHeader_IDBoundsCheck(headerID);
    return mapHeaders[headerID].dayMusicID;
}

u16 MapHeader_GetNightMusicID (u32 headerID)
{
    headerID = MapHeader_IDBoundsCheck(headerID);
    return mapHeaders[headerID].nightMusicID;
}

BOOL MapHeader_HasWildEncounters (u32 headerID)
{
    headerID = MapHeader_IDBoundsCheck(headerID);
    return mapHeaders[headerID].wildEncountersArchiveID != 65535;
}

u32 MapHeader_GetWildEncountersArchiveID (u32 headerID)
{
    headerID = MapHeader_IDBoundsCheck(headerID);
    return mapHeaders[headerID].wildEncountersArchiveID;
}

u32 MapHeader_GetEventsArchiveID (u32 headerID)
{
    headerID = MapHeader_IDBoundsCheck(headerID);
    return mapHeaders[headerID].eventsArchiveID;
}

u32 MapHeader_GetMapLabelTextID (u32 headerID)
{
    headerID = MapHeader_IDBoundsCheck(headerID);
    return mapHeaders[headerID].mapLabelTextID;
}

u8 MapHeader_GetMapLabelWindowID (u32 headerID)
{
    headerID = MapHeader_IDBoundsCheck(headerID);
    return mapHeaders[headerID].mapLabelWindowID;
}

u32 MapHeader_GetWeatherType (u32 headerID)
{
    headerID = MapHeader_IDBoundsCheck(headerID);
    return mapHeaders[headerID].weather;
}

u32 MapHeader_GetCameraType (u32 headerID)
{
    headerID = MapHeader_IDBoundsCheck(headerID);
    return mapHeaders[headerID].cameraType;
}

u32 MapHeader_GetBattleBG (u32 headerID)
{
    headerID = MapHeader_IDBoundsCheck(headerID);
    return mapHeaders[headerID].battleBG;
}

BOOL MapHeader_IsEscapeRopeAllowed (u32 headerID)
{
    headerID = MapHeader_IDBoundsCheck(headerID);
    return mapHeaders[headerID].isEscapeRopeAllowed;
}

BOOL MapHeader_IsFlyAllowed (u32 headerID)
{
    headerID = MapHeader_IDBoundsCheck(headerID);
    return mapHeaders[headerID].isFlyAllowed;
}

BOOL MapHeader_IsBikeAllowed (u32 headerID)
{
    headerID = MapHeader_IDBoundsCheck(headerID);
    return mapHeaders[headerID].isBikeAllowed;
}

u32 MapHeader_GetMapType (u32 headerID)
{
    headerID = MapHeader_IDBoundsCheck(headerID);
    return mapHeaders[headerID].mapType;
}

BOOL MapHeader_IsTeleportAllowed (u32 headerID)
{
    if (MapHeader_IsFlyAllowed(headerID) == 0) {
        return FALSE;
    }

    return MapHeader_GetMapType(headerID) != 1;
}

BOOL MapHeader_IsOnMainMatrix (u32 headerID)
{
    return MapHeader_GetMapMatrixID(headerID) == 0;
}

BOOL MapHeader_IsPokemonCenter (u32 headerID)
{
    return MapHeader_GetMapType(headerID) == 5;
}

BOOL MapHeader_IsCave (u32 headerID)
{
    return MapHeader_GetMapType(headerID) == 3;
}

BOOL sub_0203A288 (u32 headerID)
{
    return (MapHeader_GetMapType(headerID) == 4) || (MapHeader_GetMapType(headerID) == 5);
}

BOOL MapHeader_IsOutdoors (u32 headerID)
{
    return (MapHeader_GetMapType(headerID) == 1) || (MapHeader_GetMapType(headerID) == 2);
}

BOOL sub_0203A2C8 (u32 headerID)
{
    if (MapHeader_IsPokemonCenter(headerID)) {
        return TRUE;
    }

    return FALSE;
}

BOOL MapHeader_IsUnionRoom (const u32 headerID)
{
    return headerID == 466;
}

BOOL MapHeader_HasFeebasTiles (const u32 headerID)
{
    return headerID == 219;
}

BOOL MapHeader_IsTrophyGarden (const u32 headerID)
{
    return headerID == 287;
}

BOOL MapHeader_IsAmitySquare (const u32 headerID)
{
    return headerID == 253;
}

BOOL MapHeader_IsAzureFluteAllowed (const u32 headerID)
{
    if ((headerID == 220) || (headerID == 584) || (headerID == 585)) {
        return TRUE;
    }

    return FALSE;
}

BOOL MapHeader_IsPokemonCenter2F (const u32 headerID)
{
    static const u16 v0[] = {
        0x1A5,
        0x1AD,
        0x1B4,
        0x1BC,
        0x1C5,
        0x1CC,
        0x7,
        0x25,
        0x31,
        0x1EF,
        0x46,
        0x66,
        0x7C,
        0x87,
        0x98,
        0xA9,
        0xAE,
        0xBE
    };
    int i;

    for (i = 0; i < NELEMS(v0); i++) {
        if (headerID == v0[i]) {
            return 1;
        }
    }

    return 0;
}

u32 MapHeader_GetMapEvolutionMethod (u32 headerID)
{
    static const u16 v0[] = {
        0x181,
        0x1A,
        0xCB,
        0x19,
        0xCF,
        0x18,
        0xD0,
        0x18,
        0xD1,
        0x18,
        0xD2,
        0x18,
        0xD3,
        0x18,
        0xD4,
        0x18,
        0xD5,
        0x18,
        0xD6,
        0x18,
        0xD7,
        0x18,
        0xD8,
        0x18,
        0xD9,
        0x18,
        0xDA,
        0x18,
        0xDB,
        0x18,
        0xDC,
        0x18,
        0xDD,
        0x18,
        0x1FE,
        0x18,
        0x1FF,
        0x18,
        0x248,
        0x18,
        0x249,
        0x18
    };
    int i;

    for (i = 0; i < NELEMS(v0); i += 2) {
        if (v0[i] == headerID) {
            return v0[i + 1];
        }
    }

    return 0;
}
