import { add } from 'add';

describe('add function', () => {
    test('moet 2 getallen optellen', () => {
        expect(add(1, 2)).toBe(3);
        expect(add(-1, 1)).toBe(0);
        expect(add(0, 0)).toBe(0);
    });

    test('moet werken met negatieve getallen', () => {
        expect(add(-1, -1)).toBe(-2);
        expect(add(-1, 5)).toBe(4);
    });

    test('moet werken met floats', () => {
        expect(add(0.1, 0.2)).toBeCloseTo(0.3, 5); // vanwege precisieproblemen
        expect(add(-0.1, 0.1)).toBeCloseTo(0, 5);
    });

    test('moet werken met grote getallen', () => {
        expect(add(1e10, 1e10)).toBe(2e10);
        expect(add(-1e10, 1e10)).toBe(0);
    });
});