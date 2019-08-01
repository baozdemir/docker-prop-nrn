/**
 * Priority means role importance
 *
 * 98 priority cant delete 99 priorty etc. 
 */

// This file also referenced from the frontend code, be careful for any change.
// Also frontend does not do babel transform for this file !! So dont use newer features.
module.exports = [
    {
        name: "SystemAdmin",
        priority: 99
    },
    {
        name: "GeneralAdmin",
        priority: 98
    },
    {
        name: "Admin",
        priority: 97
    },
    {
        name: "CustomerDesk",
        priority: 96
    },
    {
        name: "DataCollector",
        priority: 95
    }
];
