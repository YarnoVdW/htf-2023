using {rangerschedule as my} from '../db/schema';

@path: 'service/rangerSchedule'
service RangerService {

    entity Pollution @(restrict: [
        {
            grant: ['READ'],
            to   : ['viewer']
        },
        {
            grant: ['*'],
            to   : ['admin']
        }
    ]) as projection on my.Pollution;

    entity PollutionCategories @(restrict: [
        {
            grant: ['READ'],
            to   : ['viewer']
        },
        {
            grant: ['*'],
            to   : ['admin']
        }
    ]) as projection on my.PollutionCategories;

    entity PollutionControlTeams @(restrict: [
        {
            grant: ['READ'],
            to   : ['viewer']
        },
        {
            grant: ['*'],
            to   : ['admin']
        }
    ]) as projection on my.PollutionControlTeams;

    entity Rangers @(restrict: [
        {
            grant: ['READ'],
            to   : ['viewer']
        },
        {
            grant: ['*'],
            to   : ['admin']
        }
    ]) as projection on my.Rangers;

    entity Flags @(restrict: [
        {
            grant: ['READ'],
            to   : ['viewer']
        },
        {
            grant: ['*'],
            to   : ['admin']
        }
    ]) as projection on my.Flags;

    entity CriticalityLevels @(restrict: [
        {
            grant: ['READ'],
            to   : ['viewer']
        },
        {
            grant: ['*'],
            to   : ['admin']
        }
    ]) as projection on my.CriticalityLevels;

    entity Countries @(restrict: [
        {
            grant: ['READ'],
            to   : ['viewer']
        },
        {
            grant: ['*'],
            to   : ['admin']
        }
    ]) as projection on my.Countries;

    entity Languages @(restrict: [
        {
            grant: ['READ'],
            to   : ['viewer']
        },
        {
            grant: ['*'],
            to   : ['admin']
        }
    ]) as projection on my.Languages;
}
