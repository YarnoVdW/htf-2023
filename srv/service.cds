using {edmx as rase} from '../srv/external/edmx';

service RangerService {

    entity Pollutions @(restrict: [
        {
            grant: ['READ'],
            to   : ['viewer']
        },
        {
            grant: ['*'],
            to   : ['admin']
        }
    ]) as projection on rase.Pollutions;

    entity PollutionCategories @(restrict: [
        {
            grant: ['READ'],
            to   : ['viewer']
        },
        {
            grant: ['*'],
            to   : ['admin']
        }
    ]) as projection on rase.PollutionCategories;

    entity PollutionControlTeams @(restrict: [
        {
            grant: ['READ'],
            to   : ['viewer']
        },
        {
            grant: ['*'],
            to   : ['admin']
        }
    ]) as projection on rase.PollutionControlTeams;

    entity Rangers @(restrict: [
        {
            grant: ['READ'],
            to   : ['viewer']
        },
        {
            grant: ['*'],
            to   : ['admin']
        }
    ]) as projection on rase.Rangers;

    entity Flags @(restrict: [
        {
            grant: ['READ'],
            to   : ['viewer']
        },
        {
            grant: ['*'],
            to   : ['admin']
        }
    ]) as projection on rase.Flags;

    entity CriticalityLevels @(restrict: [
        {
            grant: ['READ'],
            to   : ['viewer']
        },
        {
            grant: ['*'],
            to   : ['admin']
        }
    ]) as projection on rase.CriticalityLevels;

    entity Countries @(restrict: [
        {
            grant: ['READ'],
            to   : ['viewer']
        },
        {
            grant: ['*'],
            to   : ['admin']
        }
    ]) as projection on rase.Countries;

    entity Languages @(restrict: [
        {
            grant: ['READ'],
            to   : ['viewer']
        },
        {
            grant: ['*'],
            to   : ['admin']
        }
    ]) as projection on rase.Languages;
}
