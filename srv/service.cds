using {edmx as rase} from '../srv/external/edmx';

@protocol: [{
    path: '/ranger-service',
    kind: 'odata-v4'
}]
service RangerService {

    entity Pollutions          as projection on rase.Pollutions excluding {
        localized,
        texts
    };

    entity PollutionCategories as projection on rase.PollutionCategories excluding {
        localized,
        texts
    };

//     entity PollutionControlTeams [
//         {
//             grant: ['READ'],
//             to   : ['viewer']
//         },
//         {
//             grant: ['*'],
//             to   : ['admin']
//         }
//     ]) as projection on rase.PollutionControlTeams;

//     entity Rangers [
//         {
//             grant: ['READ'],
//             to   : ['viewer']
//         },
//         {
//             grant: ['*'],
//             to   : ['admin']
//         }
//     ]) as projection on rase.Rangers;

//     entity Flags [
//         {
//             grant: ['READ'],
//             to   : ['viewer']
//         },
//         {
//             grant: ['*'],
//             to   : ['admin']
//         }
//     ]) as projection on rase.Flags;

//     entity CriticalityLevels [
//         {
//             grant: ['READ'],
//             to   : ['viewer']
//         },
//         {
//             grant: ['*'],
//             to   : ['admin']
//         }
//     ]) as projection on rase.CriticalityLevels;

//     entity Countries [
//         {
//             grant: ['READ'],
//             to   : ['viewer']
//         },
//         {
//             grant: ['*'],
//             to   : ['admin']
//         }
//     ]) as projection on rase.Countries;

//     entity Languages [
//         {
//             grant: ['READ'],
//             to   : ['viewer']
//         },
//         {
//             grant: ['*'],
//             to   : ['admin']
//         }
//     ]) as projection on rase.Languages;
}
