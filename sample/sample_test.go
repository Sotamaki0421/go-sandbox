package sample_test

import (
	"testing"

	"example.com/sample"
	"github.com/stretchr/testify/assert"
)

func TestHoge(t *testing.T) {
	tests := []struct {
		name string // description of this test case
		want string
	}{
		{
			name: "success",
			want: "Hello",
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			got := sample.Hoge()
			assert.Equal(t, tt.want, got)
		})
	}
}
