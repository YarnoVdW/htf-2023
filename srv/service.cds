using {edmx as rase} from '../srv/external/edmx';

@protocol: [{
    path: '/ranger-service',
    kind: 'odata-v4'
}]
service RangerService {

    entity Pollutions            as projection on rase.Pollutions excluding {
        localized,
        texts
    };

    entity PollutionCategories   as projection on rase.PollutionCategories excluding {
        localized,
        texts
    };

    entity PollutionControlTeams as projection on rase.PollutionControlTeams excluding {
        localized,
        texts
    };

    entity Rangers               as projection on rase.Rangers excluding {
        localized,
        texts
    };

    entity Flags                 as projection on rase.Flags excluding {
        localized,
        texts
    };

    entity CriticalityLevels     as projection on rase.CriticalityLevels excluding {
        localized,
        texts
    };

    entity Countries             as projection on rase.Countries excluding {
        localized,
        texts
    };

    entity Languages             as projection on rase.Languages excluding {
        localized,
        texts
    };

    entity Locations             as projection on rase.Locations excluding {
        localized,
        texts
    };
}
